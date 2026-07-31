# Notes

## What I Learned

### What is a Subquery?

A subquery is a query written inside another SQL query.

The inner query executes first, and its result is used by the outer query.

---

### Scalar Subquery

Returns a single value.

Example:

* Average price
* Maximum salary
* Total revenue

---

### IN

Checks whether a value exists in the result of another query.

Example:

```sql
WHERE customer_id IN (...)
```

---

### EXISTS

Returns TRUE if the subquery finds at least one matching row.

`EXISTS` is often more efficient than `IN` when checking for related records.

---

### Correlated Subquery

A correlated subquery references columns from the outer query.

It executes once for each row of the outer query.

---

## Real-world Applications

Subqueries are commonly used to answer business questions such as:

* Products above the average price
* Customers with no orders
* Best-selling products
* Highest-priced product in each category
* Customers spending above average

Although many subqueries can later be rewritten using JOINs or CTEs for better readability and performance, understanding subqueries is an essential foundation for advanced SQL.
