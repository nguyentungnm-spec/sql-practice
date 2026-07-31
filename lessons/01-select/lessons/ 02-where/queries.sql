-- Find a customer by email
SELECT *
FROM customers
WHERE email = 'alice@gmail.com';

-- Products costing more than 500
SELECT *
FROM products
WHERE price > 500;

-- Products with price between 100 and 500
SELECT *
FROM products
WHERE price BETWEEN 100 AND 500;

-- Orders placed by customer 1
SELECT *
FROM orders
WHERE customer_id = 1;

-- Customers whose name starts with 'A'
SELECT *
FROM customers
WHERE full_name LIKE 'A%';

-- Products in category 2 or 3
SELECT *
FROM products
WHERE category_id IN (2, 3);

-- Products with stock less than 10
SELECT *
FROM products
WHERE stock_quantity < 10;

-- Customers without a phone number
SELECT *
FROM customers
WHERE phone IS NULL;

-- Available products with price under 1000
SELECT *
FROM products
WHERE stock_quantity > 0
  AND price < 1000;

-- Orders that are Pending or Processing
SELECT *
FROM orders
WHERE status = 'Pending'
   OR status = 'Processing';
