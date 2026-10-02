#!/usr/bin/env bash
# Автоматическая подготовка Ubuntu 24.04 LTS: зависимости, venv, PostgreSQL, демо-дамп.
# Репозиторий уже должен лежать в $DEST (например после git clone или git clone из .bundle).
set -euo pipefail

DEST="${DEST:-/root/Nika-Service-CRM}"

if [[ ! -f "$DEST/requirements.txt" ]]; then
  echo "Ошибка: не найден $DEST/requirements.txt (задайте DEST=... или клонируйте репозиторий)."
  exit 1
fi

export DEBIAN_FRONTEND=noninteractive
apt-get update -qq
apt-get install -y -qq \
  git python3 python3-venv python3-pip \
  build-essential pkg-config libcairo2-dev libpq-dev \
  postgresql postgresql-client curl

if [[ ! -d "$DEST/venv" ]]; then
  python3 -m venv "$DEST/venv"
fi
echo "pip: обновляю pip и ставлю requirements (часто 10–20 минут, cairo/libpq)..."
"$DEST/venv/bin/pip" install -q --upgrade pip
"$DEST/venv/bin/pip" install -r "$DEST/requirements.txt"

NIKA_PASS="$(openssl rand -hex 16)"
SECRET="$(openssl rand -hex 32)"

sudo -u postgres psql -c "CREATE USER nikacrm WITH PASSWORD '${NIKA_PASS}'" 2>/dev/null \
  || sudo -u postgres psql -c "ALTER USER nikacrm WITH PASSWORD '${NIKA_PASS}'"

if ! sudo -u postgres psql -Atc "SELECT 1 FROM pg_database WHERE datname='nikacrm'" | grep -q 1; then
  sudo -u postgres psql -c "CREATE DATABASE nikacrm OWNER nikacrm;"
fi

HAS_USERS="$(sudo -u postgres psql -d nikacrm -Atc \
  "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema='public' AND table_name='users';" || echo 0)"

if [[ "${HAS_USERS}" != "1" ]]; then
  # Приоритет — свой дамп с данными (database/seed/nikacrm_data.sql).
  # Fallback — демо-дамп разработчика.
  if [[ -f "$DEST/database/seed/nikacrm_data.sql" ]]; then
    SEED_FILE="$DEST/database/seed/nikacrm_data.sql"
    echo "Импорт данных CRM: $SEED_FILE"
  elif [[ -f "$DEST/database/bootstrap/nikacrm_public_sanitized.sql" ]]; then
    SEED_FILE="$DEST/database/bootstrap/nikacrm_public_sanitized.sql"
    echo "Импорт демо-дампа: $SEED_FILE"
  else
    echo "Ошибка: нет ни database/seed/nikacrm_data.sql, ни database/bootstrap/nikacrm_public_sanitized.sql"
    exit 1
  fi
  cp "$SEED_FILE" /tmp/nikacrm_seed.sql
  chmod 644 /tmp/nikacrm_seed.sql
  sudo -u postgres psql -d nikacrm -v ON_ERROR_STOP=1 -f /tmp/nikacrm_seed.sql
  rm -f /tmp/nikacrm_seed.sql

  # Переназначаем владельца всех объектов схемы public на nikacrm,
  # иначе миграции упадут с "must be owner of table users"
  echo "Переназначение владельца объектов на nikacrm..."
  sudo -u postgres psql -d nikacrm -v ON_ERROR_STOP=1 <<'EOSQL_REASSIGN'
DO $$
DECLARE
    r RECORD;
BEGIN
    FOR r IN SELECT tablename FROM pg_tables WHERE schemaname='public' LOOP
        EXECUTE 'ALTER TABLE public.' || quote_ident(r.tablename) || ' OWNER TO nikacrm';
    END LOOP;
    FOR r IN SELECT sequencename FROM pg_sequences WHERE schemaname='public' LOOP
        EXECUTE 'ALTER SEQUENCE public.' || quote_ident(r.sequencename) || ' OWNER TO nikacrm';
    END LOOP;
    FOR r IN SELECT viewname FROM pg_views WHERE schemaname='public' LOOP
        EXECUTE 'ALTER VIEW public.' || quote_ident(r.viewname) || ' OWNER TO nikacrm';
    END LOOP;
END $$;
EOSQL_REASSIGN
fi

# В OSS-репозитории каталог save/ не входит в git — выдаём права явно (аналог save/scripts/grant_app_user_after_vps_restore.sql)
sudo -u postgres psql -d nikacrm -v ON_ERROR_STOP=1 <<'EOSQL'
GRANT USAGE ON SCHEMA public TO nikacrm;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO nikacrm;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO nikacrm;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public
  GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO nikacrm;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public
  GRANT USAGE, SELECT ON SEQUENCES TO nikacrm;
EOSQL

if [[ -f "$DEST/save/scripts/grant_app_user_after_vps_restore.sql" ]]; then
  cp "$DEST/save/scripts/grant_app_user_after_vps_restore.sql" /tmp/grant_app_user_after_vps_restore.sql
  chmod 644 /tmp/grant_app_user_after_vps_restore.sql
  sudo -u postgres psql -d nikacrm -v ON_ERROR_STOP=1 -f /tmp/grant_app_user_after_vps_restore.sql
  rm -f /tmp/grant_app_user_after_vps_restore.sql
fi

umask 077
HOST_NAME="$(hostname -s 2>/dev/null || hostname || echo localhost)"
PUBLIC_IP="$(curl -s --max-time 5 https://api.ipify.org 2>/dev/null | tr -d '\n' || echo '')"
LOCAL_IP="$(hostname -I 2>/dev/null | awk '{print $1}' || echo '')"
cat >"$DEST/.env" <<EOF
SECRET_KEY=${SECRET}
FLASK_ENV=production
FLASK_DEBUG=False
DB_DRIVER=postgres
DATABASE_URL=postgresql://nikacrm:${NIKA_PASS}@127.0.0.1:5432/nikacrm
TRUSTED_HOSTS=localhost,127.0.0.1,@private,${HOST_NAME}${LOCAL_IP:+,$LOCAL_IP}${PUBLIC_IP:+,$PUBLIC_IP}
SOCKETIO_CORS_ALLOWED_ORIGINS=http://localhost:5000,http://127.0.0.1:5000,@private${PUBLIC_IP:+,http://$PUBLIC_IP}
RATELIMIT_STORAGE_URI=memory://
TIMEZONE_OFFSET=3
EOF
if [[ -f "$DEST/scripts/templates/mail.env.snippet" ]]; then
  cat "$DEST/scripts/templates/mail.env.snippet" >>"$DEST/.env"
else
  cat >>"$DEST/.env" <<'EOF'

# =============================================================================
# Настройки для отправки писем клиентам (SMTP)
# Можно заполнить здесь или в CRM: Настройки → Общие → Почта (SMTP).
# =============================================================================
MAIL_SERVER=
MAIL_PORT=587
MAIL_USE_TLS=True
MAIL_USE_SSL=False
MAIL_USERNAME=
MAIL_PASSWORD=
MAIL_DEFAULT_SENDER=
MAIL_TIMEOUT=15
EOF
fi
chmod 600 "$DEST/.env"

# Копируем логотипы и картинки в /var/www/nikacrm/images/ (отдаются через nginx)
if [[ -d "$DEST/static/images" ]]; then
  mkdir -p /var/www/nikacrm/images
  cp -r "$DEST/static/images/." /var/www/nikacrm/images/
  # nginx работает от www-data — важно чтобы /var/www был доступен на чтение всем
  chmod 755 /var/www
  chmod 755 /var/www/nikacrm /var/www/nikacrm/images
  find /var/www/nikacrm/images -type d -exec chmod 755 {} \;
  find /var/www/nikacrm/images -type f -exec chmod 644 {} \;
  echo "Логотипы скопированы в /var/www/nikacrm/images/ (права выставлены)"
fi

# Сайт-визитка: копируем static/site/* в /var/www/profi-service/
if [[ -d "$DEST/static/site" ]]; then
  mkdir -p /var/www/profi-service
  cp -r "$DEST/static/site/." /var/www/profi-service/
  chmod 755 /var/www /var/www/profi-service
  find /var/www/profi-service -type d -exec chmod 755 {} \;
  find /var/www/profi-service -type f -exec chmod 644 {} \;
  echo "Сайт-визитка развёрнута в /var/www/profi-service/"
fi

cd "$DEST"
./venv/bin/python scripts/run_migrations.py

echo "Готово. Пароль БД сохранён только в $DEST/.env (пользователь nikacrm)."
echo "Проверка: cd $DEST && ./venv/bin/python -c \"from app import create_app; from app.config import config; create_app(config['production'])\""
