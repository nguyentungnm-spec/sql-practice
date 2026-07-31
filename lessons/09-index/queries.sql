-----------------------------------------------------
-- Query without an index

EXPLAIN
SELECT *
FROM customers
WHERE email = 'alice@example.com';

-----------------------------------------------------
-- Create an index

CREATE INDEX idx_customers_email
ON customers(email);

-----------------------------------------------------
-- Run the same query again

EXPLAIN
SELECT *
FROM customers
WHERE email = 'alice@example.com';

-----------------------------------------------------
-- View actual execution statistics

EXPLAIN ANALYZE
SELECT *
FROM customers
WHERE email = 'alice@example.com';

-----------------------------------------------------
-- Index on products

CREATE INDEX idx_products_price
ON products(price);

-----------------------------------------------------
-- Composite Index

CREATE INDEX idx_orders_customer_date
ON orders(customer_id, order_date);

-----------------------------------------------------
-- Query using composite index

SELECT *
FROM orders
WHERE customer_id = 1
ORDER BY order_date DESC;

-----------------------------------------------------
-- Unique Index

CREATE UNIQUE INDEX idx_customers_email_unique
ON customers(email);

-----------------------------------------------------
-- Remove an index

DROP INDEX idx_products_price;
