-----------------------------------------------------
-- Basic CTE
-- Products above the average price

WITH average_price AS (
    SELECT AVG(price) AS avg_price
    FROM products
)
SELECT
    product_name,
    price
FROM products
WHERE price > (
    SELECT avg_price
    FROM average_price
);

-----------------------------------------------------
-- Customer total spending

WITH customer_spending AS (
    SELECT
        customer_id,
        SUM(total_amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM customer_spending
ORDER BY total_spent DESC;

-----------------------------------------------------
-- CTE with JOIN

WITH order_summary AS (
    SELECT
        o.order_id,
        c.full_name,
        o.total_amount
    FROM orders o
    JOIN customers c
        ON o.customer_id = c.customer_id
)
SELECT *
FROM order_summary
ORDER BY total_amount DESC;

-----------------------------------------------------
-- Multiple CTEs

WITH customer_orders AS (
    SELECT
        customer_id,
        COUNT(*) AS total_orders
    FROM orders
    GROUP BY customer_id
),
customer_spending AS (
    SELECT
        customer_id,
        SUM(total_amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT
    c.full_name,
    co.total_orders,
    cs.total_spent
FROM customers c
JOIN customer_orders co
    ON c.customer_id = co.customer_id
JOIN customer_spending cs
    ON c.customer_id = cs.customer_id;

-----------------------------------------------------
-- Top 5 customers by spending

WITH customer_spending AS (
    SELECT
        customer_id,
        SUM(total_amount) AS total_spent
    FROM orders
    GROUP BY customer_id
)
SELECT
    customer_id,
    total_spent
FROM customer_spending
ORDER BY total_spent DESC
LIMIT 5;

-----------------------------------------------------
-- Recursive CTE Example

WITH RECURSIVE numbers AS (
    SELECT 1 AS n

    UNION ALL

    SELECT n + 1
    FROM numbers
    WHERE n < 10
)
SELECT *
FROM numbers;
