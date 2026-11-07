import sys, os
import sqlite3
import psycopg2
from psycopg2.extras import DictCursor
from datetime import datetime
import re
from dotenv import load_dotenv

load_dotenv('/root/Nika-Service-CRM/.env')
sys.path.append('/root/Nika-Service-CRM')

from app import create_app
from app.database.connection import get_db_connection
from app.services.salary_service import SalaryService

app = create_app()

SQLITE_DB = '/root/migration/verhnyaya.sqlite'
BRANCH_ID = 2 # Верхняя

def format_phone(phone, client_id):
    if not phone: return f"0-{client_id}"
    p = re.sub(r'\D', '', str(phone))
    if len(p) == 11 and p.startswith('8'): return "+7" + p[1:]
    if len(p) == 11 and p.startswith('7'): return "+7" + p[1:]
    if len(p) == 10: return "+7" + p
    return f"0-{p}-{client_id}"

def parse_date(date_str):
    if not date_str: return datetime.now()
    date_str = date_str.strip()
    for fmt in ('%d-%m-%Y %H:%M', '%d.%m.%Y %H:%M', '%Y-%m-%d %H:%M'):
        try:
            return datetime.strptime(date_str, fmt)
        except ValueError:
            continue
    return datetime.now()

with app.app_context():
    print("Чтение базы 'Верхней'...")
    sqlite_conn = sqlite3.connect(SQLITE_DB)
    sqlite_conn.row_factory = sqlite3.Row
    sqlite_cur = sqlite_conn.cursor()

    with get_db_connection() as conn:
        cur = conn.cursor()
        
        # БЕЗ TRUNCATE! Просто добавляем данные.
        
        cur.execute("SELECT id, username FROM users WHERE role = 'admin' LIMIT 1")
        admin = cur.fetchone()
        admin_id, admin_username = admin[0], admin[1]

        cur.execute("SELECT id, name FROM masters")
        masters = {r[1].upper(): r[0] for r in cur.fetchall()}
        
        cur.execute("SELECT id, name FROM device_brands")
        brands = {r[1].upper(): r[0] for r in cur.fetchall()}
        
        cur.execute("SELECT id FROM device_types LIMIT 1")
        dev_type_row = cur.fetchone()
        dev_type = dev_type_row[0] if dev_type_row else 1

        cur.execute("SELECT id, code, name FROM order_statuses")
        statuses = {row[2].upper(): {'id': row[0], 'code': row[1]} for row in cur.fetchall()}
        default_status = statuses.get('НОВЫЙ', {'id': 3, 'code': 'новый'})

        print("Перенос клиентов 'Верхней'...")
        sqlite_cur.execute("SELECT id, FIO, Phone, date FROM ClientsMap ORDER BY id")
        client_map = {} # Связка: старый ID -> новый ID
        
        for row in sqlite_cur.fetchall():
            old_id = int(row['id'])
            c_date = parse_date(row['date'])
            phone = format_phone(row['Phone'], old_id)
            
            # Проверяем, нет ли уже такого телефона в CRM
            cur.execute("SELECT id FROM customers WHERE phone = %s", (phone,))
            if cur.fetchone():
                phone = f"{phone}-v{old_id}"

            cur.execute("""
                INSERT INTO customers (name, phone, created_at, updated_at)
                VALUES (%s, %s, %s, %s) RETURNING id
            """, (row['FIO'].strip() or 'Неизвестный', phone, c_date, c_date))
            
            new_id = cur.fetchone()[0]
            client_map[old_id] = new_id

        print("Перенос заявок 'Верхней'...")
        sqlite_cur.execute("SELECT * FROM Catalog ORDER BY id")
        order_count = 0
        
        for order in sqlite_cur.fetchall():
            old_id = int(order['id'])
            cid = int(order['ClientId']) if str(order['ClientId']).isdigit() else 0
            
            if cid not in client_map:
                continue # Пропускаем, если клиента нет в базе

            new_customer_id = client_map[cid]
            c_date = parse_date(order['Data_priema'])
            prep = float(order['Predoplata'] or 0)
            zatrati = float(order['Zatrati'] or 0)
            final_cost = float(order['okonchatelnaya_stoimost_remonta'] or 0)
            est_cost = float(order['predvaritelnaya_stoimost'] or 0)
            
            old_status = (order['Status_remonta'] or '').strip().upper()
            if old_status == 'ВЫДАН': mapped = 'ВЫДАН'
            elif old_status == 'ГОТОВ': mapped = 'ГОТОВ'
            elif old_status == 'ДИАГНОСТИКА': mapped = 'ДИАГНОСТИКА'
            elif old_status == 'ЖДЁТ ЗАПЧАСТЬ': mapped = 'ЖДЕТ ЗАПЧАСТЬ'
            elif old_status == 'СОГЛАСОВАНИЕ С КЛИЕНТОМ': mapped = 'СОГЛАСОВАНИЕ'
            else: mapped = 'НОВЫЙ'
            
            status_obj = statuses.get(mapped, default_status)
            status_id = status_obj['id']
            status_code = status_obj['code']
            
            b_name = (order['brand'] or '').strip().upper()
            if b_name and b_name not in brands:
                cur.execute("INSERT INTO device_brands (name) VALUES (%s) RETURNING id", (b_name,))
                brands[b_name] = cur.fetchone()[0]
            b_id = brands.get(b_name) or 1

            cur.execute("""
                INSERT INTO devices (customer_id, device_type_id, device_brand_id, serial_number, symptom_tags, appearance_tags, created_at)
                VALUES (%s, %s, %s, %s, %s, %s, %s) RETURNING id
            """, (new_customer_id, dev_type, b_id, order['SerialNumber'] or '', order['polomka'] or '', order['sostoyanie'] or '', c_date))
            dev_id = cur.fetchone()[0]

            master_id = masters.get((order['master'] or '').strip().upper())
            
            # Вставляем заявку БЕЗ жесткого ID, но с префиксом "В-" для order_id
            cur.execute("""
                INSERT INTO orders (order_id, device_id, customer_id, manager_id, master_id, status_id, status, created_at, updated_at, model, branch_id, hidden, estimated_cost)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, 0, %s) RETURNING id
            """, (f"В-{old_id}", dev_id, new_customer_id, admin_id, master_id, status_id, status_code, c_date, c_date, order['model'] or '', BRANCH_ID, str(est_cost)))
            new_order_id = cur.fetchone()[0]

            if final_cost > 0:
                work_cost = final_cost - zatrati
                if work_cost < 0: work_cost = final_cost; zatrati = 0
                
                if work_cost > 0:
                    cur.execute("INSERT INTO order_services (order_id, name, quantity, price, cost_price, created_at) VALUES (%s, 'Ремонт (Импорт)', 1, %s, 0, %s)", (new_order_id, work_cost, c_date))
                if zatrati > 0:
                    cur.execute("INSERT INTO order_parts (order_id, name, quantity, price, purchase_price, created_at) VALUES (%s, 'Запчасти (Импорт)', 1, %s, %s, %s)", (new_order_id, zatrati, zatrati, c_date))
            elif est_cost > 0:
                cur.execute("INSERT INTO order_services (order_id, name, quantity, price, cost_price, created_at) VALUES (%s, 'Предв. стоимость (Импорт)', 1, %s, 0, %s)", (new_order_id, est_cost, c_date))

            def add_pay(amount, cat_id, kind, key_suffix):
                if amount <= 0: return
                cur.execute("""
                    INSERT INTO payments (order_id, amount, payment_type, payment_date, created_by, created_by_username, kind, status, idempotency_key)
                    VALUES (%s, %s, 'cash', %s, %s, %s, %s, 'captured', %s) RETURNING id
                """, (new_order_id, amount, c_date, admin_id, admin_username, kind, f"imp_v_{old_id}_{key_suffix}"))
                pay_id = cur.fetchone()[0]
                cur.execute("""
                    INSERT INTO cash_transactions (category_id, amount, transaction_type, payment_method, description, order_id, payment_id, transaction_date, created_by_id, created_by_username)
                    VALUES (%s, %s, 'income', 'cash', 'Импорт Верхняя', %s, %s, %s, %s, %s)
                """, (cat_id, amount, new_order_id, pay_id, c_date, admin_id, admin_username))

            add_pay(prep, 3, 'deposit', 'prep')
            if old_status == 'ВЫДАН' and final_cost > 0:
                add_pay(final_cost - prep, 1, 'payment', 'final')

            order_count += 1

        conn.commit()
        print(f"Успешно перенесено клиентов: {len(client_map)}")
        print(f"Успешно перенесено заявок: {order_count}")
    
    print("Начисление зарплаты...")
    sqlite_cur.execute("SELECT id FROM Catalog ORDER BY id")
    old_ids = [int(r['id']) for r in sqlite_cur.fetchall()]
    
    with get_db_connection() as conn:
        cur = conn.cursor()
        for old_id in old_ids:
            cur.execute("SELECT id FROM orders WHERE order_id = %s", (f"В-{old_id}",))
            res = cur.fetchone()
            if not res: continue
            new_order_id = res[0]
            
            try:
                SalaryService.accrue_salary_for_order(new_order_id, force_recalculate=True)
            except Exception:
                pass
            
            cur.execute("SELECT 1 FROM salary_accruals WHERE order_id = %s LIMIT 1", (new_order_id,))
            if not cur.fetchone():
                cur.execute("""
                    INSERT INTO salary_accruals (order_id, user_id, role, amount_cents, base_amount_cents, profit_cents, rule_type, rule_value, calculated_from)
                    VALUES (%s, %s, 'manager', 0, 0, 0, 'fixed', 0, 'import')
                """, (new_order_id, admin_id))
        
        conn.commit()

    sqlite_conn.close()
    print("Миграция 'Верхней' успешно завершена!")
