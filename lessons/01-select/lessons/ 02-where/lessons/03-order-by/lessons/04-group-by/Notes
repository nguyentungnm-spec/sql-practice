# Notes

## What I Learned

### Aggregate Functions

Aggregate functions summarize multiple rows into a single result.

Common functions include:

* `COUNT()` — Counts rows
* `SUM()` — Adds numeric values
* `AVG()` — Calculates the average
* `MIN()` — Finds the smallest value
* `MAX()` — Finds the largest value

---

### GROUP BY

The `GROUP BY` clause groups rows that have the same value in one or more columns.

Each group is summarized using aggregate functions.

---

### HAVING

`HAVING` filters groups after aggregation.

Unlike `WHERE`, which filters individual rows, `HAVING` filters grouped results.

Example:

```sql
SELECT category_id, COUNT(*)
FROM products
GROUP BY category_id
HAVING COUNT(*) > 5;
```

---

### GROUP BY with ORDER BY

Grouped results can be sorted after aggregation.

Example:

```sql
SELECT customer_id,
       SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;
```

---

## Real-world Applications

* Monthly sales reports
* Top customers
* Product performance
* Revenue by category
* Inventory statistics
* Business dashboards
