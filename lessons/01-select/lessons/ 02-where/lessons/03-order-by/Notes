# Notes

## What I Learned

### ORDER BY

The `ORDER BY` clause sorts query results.

If no direction is specified, PostgreSQL sorts in ascending order (`ASC`) by default.

---

### ASC

Sorts values from smallest to largest or alphabetically from A to Z.

Example:

```sql
ORDER BY price ASC;
```

---

### DESC

Sorts values from largest to smallest or from Z to A.

Example:

```sql
ORDER BY price DESC;
```

---

### Multiple Columns

Queries can be sorted by more than one column.

PostgreSQL sorts using the first column first. If multiple rows have the same value, it continues sorting using the next column.

Example:

```sql
ORDER BY category_id ASC, price DESC;
```

---

### ORDER BY with WHERE

Filtering is performed before sorting.

Example:

```sql
SELECT *
FROM products
WHERE price < 500
ORDER BY price ASC;
```

---

### ORDER BY with LIMIT

A common business use case is retrieving the highest, lowest, newest, or oldest records.

Example:

```sql
SELECT *
FROM products
ORDER BY price DESC
LIMIT 10;
```
