-----------------------------------------------------
-- Basic Transaction

BEGIN;

UPDATE products
SET stock_quantity = stock_quantity - 1
WHERE product_id = 1;

UPDATE customers
SET phone = '0123456789'
WHERE customer_id = 1;

COMMIT;

-----------------------------------------------------
-- Rollback Transaction

BEGIN;

UPDATE products
SET stock_quantity = stock_quantity - 10
WHERE product_id = 2;

ROLLBACK;

-----------------------------------------------------
-- Savepoint Example

BEGIN;

UPDATE customers
SET phone = '0999999999'
WHERE customer_id = 2;

SAVEPOINT customer_updated;

UPDATE products
SET price = price * 1.10;

ROLLBACK TO SAVEPOINT customer_updated;

COMMIT;

-----------------------------------------------------
-- Simulated Bank Transfer

BEGIN;

UPDATE accounts
SET balance = balance - 500
WHERE account_id = 1;

UPDATE accounts
SET balance = balance + 500
WHERE account_id = 2;

COMMIT;

-----------------------------------------------------
-- Check Current Isolation Level

SHOW transaction_isolation;
