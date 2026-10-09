INSERT INTO products (name, description, price, stock)
SELECT
    'HDMI Cable',
    '5m long HDMI cable with 4K compatibility',
    345.00,
    45
WHERE NOT EXISTS (
    SELECT 1
    FROM products
    WHERE name = 'HDMI Cable'
);
