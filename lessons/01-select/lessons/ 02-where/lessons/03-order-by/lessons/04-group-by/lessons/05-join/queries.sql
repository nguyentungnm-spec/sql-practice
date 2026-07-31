-- INNER JOIN
-- Display each order with customer information
SELECT
    o.order_id,
    c.full_name,
    o.order_date,
    o.total_amount
FROM orders AS o
INNER JOIN customers AS c
    ON o.customer_id = c.customer_id;

-----------------------------------------------------

-- INNER JOIN
-- Display products with their categories
SELECT
    p.product_name,
    c.category_name,
    p.price
FROM products AS p
INNER JOIN categories AS c
    ON p.category_id = c.category_id;

-----------------------------------------------------

-- LEFT JOIN
-- Display all customers, including those who have never placed an order
SELECT
    c.customer_id,
    c.full_name,
    o.order_id
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id;

-----------------------------------------------------

-- RIGHT JOIN
-- Display all orders and their customers
SELECT
    c.full_name,
    o.order_id
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.customer_id = o.customer_id;

-----------------------------------------------------

-- FULL OUTER JOIN
-- Display all customers and all orders
SELECT
    c.full_name,
    o.order_id
FROM customers AS c
FULL OUTER JOIN orders AS o
    ON c.customer_id = o.customer_id;

-----------------------------------------------------

-- Multiple JOINs
-- Display order details with customer and product information
SELECT
    o.order_id,
    c.full_name,
    p.product_name,
    oi.quantity,
    oi.unit_price
FROM orders AS o
INNER JOIN customers AS c
    ON o.customer_id = c.customer_id
INNER JOIN order_items AS oi
    ON o.order_id = oi.order_id
INNER JOIN products AS p
    ON oi.product_id = p.product_id;

-----------------------------------------------------

-- Calculate total amount for each order
SELECT
    o.order_id,
    c.full_name,
    SUM(oi.quantity * oi.unit_price) AS total_amount
FROM orders AS o
INNER JOIN customers AS c
    ON o.customer_id = c.customer_id
INNER JOIN order_items AS oi
    ON o.order_id = oi.order_id
GROUP BY
    o.order_id,
    c.full_name
ORDER BY total_amount DESC;

-----------------------------------------------------

-- Find customers who purchased products in the Electronics category
SELECT DISTINCT
    c.full_name
FROM customers AS c
INNER JOIN orders AS o
    ON c.customer_id = o.customer_id
INNER JOIN order_items AS oi
    ON o.order_id = oi.order_id
INNER JOIN products AS p
    ON oi.product_id = p.product_id
INNER JOIN categories AS cat
    ON p.category_id = cat.category_id
WHERE cat.category_name = 'Electronics';
