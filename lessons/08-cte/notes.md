# Notes

## What I Learned

### What is a CTE?

A Common Table Expression (CTE) is a temporary named result set created using the `WITH` clause.

It exists only during the execution of a single SQL statement.

---

### Why Use CTE?

Compared to nested subqueries, CTEs offer several advantages:

* Better readability
* Easier debugging
* Reusable intermediate results
* Easier maintenance

---

### Multiple CTEs

A query can contain more than one CTE.

Each CTE can reference previously defined CTEs.

---

### Recursive CTE

Recursive CTEs allow a query to reference itself.

They are useful for working with hierarchical or recursive data structures such as:

* Employee hierarchy
* Organization charts
* Folder structures
* Category trees

---

## CTE vs Subquery

| CTE                      | Subquery                     |
| ------------------------ | ---------------------------- |
| More readable            | Can become difficult to read |
| Easier to maintain       | Harder to modify             |
| Good for complex queries | Better for simple queries    |

---

## Real-world Applications

Common business use cases include:

* Customer spending reports
* Monthly revenue reports
* Sales summaries
* Product performance analysis
* Organizational hierarchies
* Business Intelligence dashboards
