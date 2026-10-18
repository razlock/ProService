-- Миграция 026: Филиалы (точки) и привязка пользователей
CREATE TABLE IF NOT EXISTS branches (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(500),
    phone VARCHAR(50),
    color VARCHAR(7) DEFAULT '#3b82f6',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- UNIQUE (name) нужен для идемпотентности ON CONFLICT DO NOTHING
CREATE UNIQUE INDEX IF NOT EXISTS branches_ux_name ON branches (name);

-- Две точки по умолчанию.
-- ВАЖНО: если БД уже импортирована из seed-дампа, эти строки УЖЕ есть —
-- ON CONFLICT DO NOTHING их не задублирует (благодаря UNIQUE-индексу выше).
INSERT INTO branches (name, address, phone, color) VALUES
('Новый город', 'пр-кт Ульяновский, 12е', '+7 (900) 111-22-33', '#3b82f6'),
('Верхняя терраса', 'пр-д Сиреневый, 13б', '+7 (900) 444-55-66', '#8b5cf6')
ON CONFLICT (name) DO NOTHING;

-- Привязка пользователя к точке
ALTER TABLE users ADD COLUMN IF NOT EXISTS branch_id INTEGER REFERENCES branches(id);

-- Привязка заявки к точке
ALTER TABLE orders ADD COLUMN IF NOT EXISTS branch_id INTEGER REFERENCES branches(id);

-- Привязка мастера к точке
ALTER TABLE masters ADD COLUMN IF NOT EXISTS branch_id INTEGER REFERENCES branches(id);

-- Привязка менеджера к точке
ALTER TABLE managers ADD COLUMN IF NOT EXISTS branch_id INTEGER REFERENCES branches(id);
