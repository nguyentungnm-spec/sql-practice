-----------------------------------------------------
-- ROW_NUMBER()
-- Assign a unique row number to each product by price

SELECT
    product_name,
    price,
    ROW_NUMBER() OVER (ORDER BY price DESC) AS row_num
FROM products;

-----------------------------------------------------
-- RANK()
-- Rank products by price

SELECT
    product_name,
    price,
    RANK() OVER (ORDER BY price DESC) AS price_rank
FROM products;

-----------------------------------------------------
-- DENSE_RANK()
-- Rank products without gaps

SELECT
    product_name,
    price,
    DENSE_RANK() OVER (ORDER BY price DESC) AS dense_rank
FROM products;

-----------------------------------------------------
-- PARTITION BY
-- Rank products within each category

SELECT
    category_id,
    product_name,
    price,
    ROW_NUMBER() OVER (
        PARTITION BY category_id
        ORDER BY price DESC
    ) AS category_rank
FROM products;

-----------------------------------------------------
-- LAG()
-- Compare each order with the previous order

SELECT
    order_id,
    order_date,
    total_amount,
    LAG(total_amount)
        OVER (ORDER BY order_date) AS previous_amount
FROM orders;

-----------------------------------------------------
-- LEAD()
-- Compare each order with the next order

SELECT
    order_id,
    order_date,
    total_amount,
    LEAD(total_amount)
        OVER (ORDER BY order_date) AS next_amount
FROM orders;

-----------------------------------------------------
-- Running Total

SELECT
    order_date,
    total_amount,
    SUM(total_amount)
        OVER (
            ORDER BY order_date
        ) AS running_total
FROM orders;

-----------------------------------------------------
-- Average price by category

SELECT
    product_name,
    category_id,
    price,
    AVG(price)
        OVER (
            PARTITION BY category_id
        ) AS category_average
FROM products;

-----------------------------------------------------
-- Top 3 most expensive products in each category

SELECT *
FROM
(
    SELECT
        product_name,
        category_id,
        price,
        ROW_NUMBER() OVER
        (
            PARTITION BY category_id
            ORDER BY price DESC
        ) AS rn
    FROM products
) ranked_products
WHERE rn <= 3;
