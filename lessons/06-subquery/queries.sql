-----------------------------------------------------
-- Scalar Subquery
-- Find products more expensive than the average price

SELECT
    product_name,
    price
FROM products
WHERE price >
(
    SELECT AVG(price)
    FROM products
);

-----------------------------------------------------
-- Subquery with IN
-- Find customers who have placed at least one order

SELECT *
FROM customers
WHERE customer_id IN
(
    SELECT customer_id
    FROM orders
);

-----------------------------------------------------
-- Subquery with NOT IN
-- Find customers who have never placed an order

SELECT *
FROM customers
WHERE customer_id NOT IN
(
    SELECT customer_id
    FROM orders
);

-----------------------------------------------------
-- Subquery in FROM
-- Calculate the average spending of customers

SELECT AVG(total_spent) AS average_customer_spending
FROM
(
    SELECT
        customer_id,
        SUM(total_amount) AS total_spent
    FROM orders
    GROUP BY customer_id
) AS customer_summary;

-----------------------------------------------------
-- EXISTS
-- Find customers who have placed orders

SELECT
    customer_id,
    full_name
FROM customers c
WHERE EXISTS
(
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);

-----------------------------------------------------
-- Correlated Subquery
-- Find the most expensive product in each category

SELECT
    product_name,
    category_id,
    price
FROM products p
WHERE price =
(
    SELECT MAX(price)
    FROM products
    WHERE category_id = p.category_id
);

-----------------------------------------------------
-- Find orders above the average order value

SELECT
    order_id,
    total_amount
FROM orders
WHERE total_amount >
(
    SELECT AVG(total_amount)
    FROM orders
);

-----------------------------------------------------
-- Customers who spent more than the average customer

SELECT
    customer_id,
    SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) >
(
    SELECT AVG(customer_total)
    FROM
    (
        SELECT
            SUM(total_amount) AS customer_total
        FROM orders
        GROUP BY customer_id
    ) AS summary
);
