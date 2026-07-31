# Notes

## What I Learned

### What is a Window Function?

A Window Function performs calculations across a set of related rows while keeping every individual row in the result.

Unlike `GROUP BY`, window functions do not collapse multiple rows into one.

---

### OVER()

The `OVER()` clause defines the window used by a window function.

It can include:

* `ORDER BY`
* `PARTITION BY`

---

### ROW_NUMBER()

Assigns a unique sequential number to each row.

---

### RANK()

Assigns rankings with gaps when values are tied.

Example:

1, 2, 2, 4

---

### DENSE_RANK()

Assigns rankings without gaps.

Example:

1, 2, 2, 3

---

### PARTITION BY

Splits rows into independent groups before applying the window function.

Each partition is processed separately.

---

### LAG()

Returns the value from the previous row.

Useful for comparing current and previous records.

---

### LEAD()

Returns the value from the next row.

Useful for forecasting and trend analysis.

---

## Real-world Applications

Window Functions are widely used for:

* Sales rankings
* Top N products
* Customer rankings
* Running totals
* Revenue trends
* Time-series analysis
* Business intelligence dashboards
