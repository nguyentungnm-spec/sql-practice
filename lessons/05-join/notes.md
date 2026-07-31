# Notes

## What I Learned

### INNER JOIN

Returns only rows that have matching values in both tables.

---

### LEFT JOIN

Returns all rows from the left table and matching rows from the right table.

If there is no match, the columns from the right table contain `NULL`.

---

### RIGHT JOIN

Returns all rows from the right table and matching rows from the left table.

---

### FULL OUTER JOIN

Returns all rows from both tables.

When no matching row exists, the missing side is filled with `NULL`.

---

### Table Aliases

Aliases make SQL easier to read.

Example:

* `customers AS c`
* `orders AS o`
* `products AS p`

---

## Real-world Applications

JOIN is one of the most frequently used SQL features in business systems.

Examples include:

* Customer order history
* Sales reports
* Product catalog
* Inventory management
* Revenue analysis
* Business dashboards

Most production SQL queries involve joining multiple tables rather than querying a single table.
