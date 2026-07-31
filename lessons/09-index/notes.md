# Notes

## What I Learned

### What is an Index?

An index is a database object that helps PostgreSQL locate rows more efficiently.

Without an index, PostgreSQL may scan every row in a table (Sequential Scan).

---

### When Should You Create an Index?

Indexes are useful for columns that are frequently used in:

* WHERE
* JOIN
* ORDER BY
* GROUP BY

Examples:

* customer_id
* email
* order_date
* category_id

---

### When Should You Avoid Indexes?

Indexes are not always beneficial.

Avoid adding indexes to:

* Very small tables
* Columns with very few distinct values
* Columns that are frequently updated if the index is rarely used

Each index consumes storage space and must be maintained during INSERT, UPDATE, and DELETE operations.

---

### Composite Index

A composite index contains multiple columns.

Example:

(customer_id, order_date)

This index can improve queries that filter by customer and sort by order date.

---

### EXPLAIN

`EXPLAIN` displays PostgreSQL's execution plan without running the query.

It helps you understand how PostgreSQL intends to retrieve the data.

---

### EXPLAIN ANALYZE

`EXPLAIN ANALYZE` executes the query and reports actual execution statistics.

It is commonly used to compare performance before and after creating an index.

---

## Real-world Applications

Indexes are essential for:

* Login systems
* Product search
* Customer lookup
* Order history
* Reporting dashboards
* Large-scale business databases

A well-designed index strategy can reduce query execution time from seconds to milliseconds.
