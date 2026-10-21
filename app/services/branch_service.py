"""
Сервис для управления филиалами (точками).
"""
import os
from typing import Dict, List, Optional
from app.database.connection import get_db_connection
from app.utils.exceptions import DatabaseError
import logging

logger = logging.getLogger(__name__)


class BranchService:
    """Сервис для работы с филиалами."""

    # Папка для логотипов филиалов (та, что отдаёт nginx)
    LOGO_DIR = "/var/www/nikacrm/images/branches"
    LOGO_URL_PREFIX = "/images/branches"

    @staticmethod
    def get_all(include_inactive: bool = False) -> List[Dict]:
        """Возвращает список всех филиалов."""
        try:
            with get_db_connection() as conn:
                cursor = conn.cursor()
                if include_inactive:
                    cursor.execute("SELECT id, name, address, phone, color, is_active, logo_url FROM branches ORDER BY id")
                else:
                    cursor.execute("SELECT id, name, address, phone, color, is_active, logo_url FROM branches WHERE is_active = TRUE ORDER BY id")
                rows = cursor.fetchall()
                return [
                    {
                        'id': row[0],
                        'name': row[1],
                        'address': row[2],
                        'phone': row[3],
                        'color': row[4],
                        'is_active': row[5],
                        'logo_url': row[6],
                    }
                    for row in rows
                ]
        except Exception as e:
            logger.error(f"Ошибка при получении филиалов: {e}")
            raise DatabaseError(f"Не удалось получить филиалы: {e}")

    @staticmethod
    def get_by_id(branch_id: int) -> Optional[Dict]:
        """Возвращает филиал по ID или None."""
        try:
            with get_db_connection() as conn:
                cursor = conn.cursor()
                cursor.execute("SELECT id, name, address, phone, color, is_active, logo_url FROM branches WHERE id = ?", (branch_id,))
                row = cursor.fetchone()
                if not row:
                    return None
                return {
                    'id': row[0],
                    'name': row[1],
                    'address': row[2],
                    'phone': row[3],
                    'color': row[4],
                    'is_active': row[5],
                    'logo_url': row[6],
                }
        except Exception as e:
            logger.error(f"Ошибка при получении филиала #{branch_id}: {e}")
            raise DatabaseError(f"Не удалось получить филиал: {e}")

    @staticmethod
    def create(data: Dict, logo_file=None) -> int:
        """Создаёт новый филиал. Возвращает ID."""
        name = (data.get('name') or '').strip()
        if not name:
            raise ValueError("Название филиала обязательно")

        logo_url = None
        if logo_file and logo_file.filename:
            logo_url = BranchService._save_logo(logo_file)

        try:
            with get_db_connection() as conn:
                cursor = conn.cursor()
                cursor.execute(
                    "INSERT INTO branches (name, address, phone, color, is_active, logo_url) VALUES (?, ?, ?, ?, ?, ?)",
                    (
                        name,
                        (data.get('address') or '').strip() or None,
                        (data.get('phone') or '').strip() or None,
                        (data.get('color') or '#3b82f6').strip(),
                        data.get('is_active', True),
                        logo_url,
                    )
                )
                conn.commit()
                return cursor.lastrowid
        except Exception as e:
            logger.error(f"Ошибка при создании филиала: {e}")
            raise DatabaseError(f"Не удалось создать филиал: {e}")

    @staticmethod
    def update(branch_id: int, data: Dict, logo_file=None) -> bool:
        """Обновляет филиал. Возвращает True при успехе."""
        name = (data.get('name') or '').strip()
        if not name:
            raise ValueError("Название филиала обязательно")

        current = BranchService.get_by_id(branch_id)
        if not current:
            raise ValueError("Филиал не найден")

        logo_url = current.get('logo_url')
        if logo_file and logo_file.filename:
            logo_url = BranchService._save_logo(logo_file)

        try:
            with get_db_connection() as conn:
                cursor = conn.cursor()
                cursor.execute(
                    "UPDATE branches SET name = ?, address = ?, phone = ?, color = ?, is_active = ?, logo_url = ? WHERE id = ?",
                    (
                        name,
                        (data.get('address') or '').strip() or None,
                        (data.get('phone') or '').strip() or None,
                        (data.get('color') or '#3b82f6').strip(),
                        data.get('is_active', True),
                        logo_url,
                        branch_id,
                    )
                )
                conn.commit()
                return True
        except Exception as e:
            logger.error(f"Ошибка при обновлении филиала #{branch_id}: {e}")
            raise DatabaseError(f"Не удалось обновить филиал: {e}")

    @staticmethod
    def deactivate(branch_id: int) -> bool:
        """Деактивирует филиал (мягкое удаление)."""
        try:
            with get_db_connection() as conn:
                cursor = conn.cursor()
                cursor.execute("UPDATE branches SET is_active = FALSE WHERE id = ?", (branch_id,))
                conn.commit()
                return True
        except Exception as e:
            logger.error(f"Ошибка при деактивации филиала #{branch_id}: {e}")
            raise DatabaseError(f"Не удалось деактивировать филиал: {e}")

    @staticmethod
    def _save_logo(file_storage) -> str:
        """Сохраняет логотип филиала и возвращает URL."""
        from werkzeug.utils import secure_filename
        import uuid

        safe_name = secure_filename(file_storage.filename or '')
        ext = os.path.splitext(safe_name)[1].lower()
        if ext not in ('.png', '.jpg', '.jpeg', '.svg', '.webp'):
            raise ValueError("Недопустимый формат файла (разрешены: png, jpg, jpeg, svg, webp)")

        unique_name = f"branch_{uuid.uuid4().hex[:12]}{ext}"
        os.makedirs(BranchService.LOGO_DIR, exist_ok=True)
        full_path = os.path.join(BranchService.LOGO_DIR, unique_name)
        file_storage.save(full_path)
        os.chmod(full_path, 0o644)

        return f"{BranchService.LOGO_URL_PREFIX}/{unique_name}"
