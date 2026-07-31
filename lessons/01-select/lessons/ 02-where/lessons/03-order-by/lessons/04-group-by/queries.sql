-- Count total customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- Count products in each category
SELECT
    category_id,
    COUNT(*) AS total_products
FROM products
GROUP BY category_id;

-- Average product price by category
SELECT
    category_id,
    AVG(price) AS average_price
FROM products
GROUP BY category_id;

-- Most expensive product in each category
SELECT
    category_id,
    MAX(price) AS highest_price
FROM products
GROUP BY category_id;

-- Cheapest product in each category
SELECT
    category_id,
    MIN(price) AS lowest_price
FROM products
GROUP BY category_id;

-- Total sales amount for each customer
SELECT
    customer_id,
    SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id;

-- Number of orders placed by each customer
SELECT
    customer_id,
    COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;

-- Categories with more than five products
SELECT
    category_id,
    COUNT(*) AS total_products
FROM products
GROUP BY category_id
HAVING COUNT(*) > 5;

-- Customers who spent more than 1000
SELECT
    customer_id,
    SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 1000;

-- Top customers by total spending
SELECT
    customer_id,
    SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;
