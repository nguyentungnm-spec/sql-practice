-- View all customers
SELECT *
FROM customers;

-- View specific columns
SELECT full_name, email
FROM customers;

-- Rename column
SELECT
    full_name AS customer_name,
    email AS customer_email
FROM customers;

-- Show unique categories
SELECT DISTINCT category_name
FROM categories;

-- Display first 10 products
SELECT *
FROM products
LIMIT 10;

-- Products costing more than 500
SELECT
    product_name,
    price
FROM products;
