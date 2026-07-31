-- List all customers ordered by name (A → Z)
SELECT *
FROM customers
ORDER BY full_name ASC;

-- List products from highest price to lowest
SELECT *
FROM products
ORDER BY price DESC;

-- Display newest orders first
SELECT *
FROM orders
ORDER BY order_date DESC;

-- Display oldest orders first
SELECT *
FROM orders
ORDER BY order_date ASC;

-- Sort products by category, then by price
SELECT *
FROM products
ORDER BY category_id ASC, price DESC;

-- Find products cheaper than 500 and sort by price
SELECT *
FROM products
WHERE price < 500
ORDER BY price ASC;

-- Show top 10 most expensive products
SELECT *
FROM products
ORDER BY price DESC
LIMIT 10;

-- Show top 10 newest customers
SELECT *
FROM customers
ORDER BY created_at DESC
LIMIT 10;

-- Sort customers by name in reverse alphabetical order
SELECT *
FROM customers
ORDER BY full_name DESC;

-- Sort orders by status, then by order date
SELECT *
FROM orders
ORDER BY status ASC, order_date DESC;
