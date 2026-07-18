# Database Overview

## Business Scenario

This database represents a simple online shopping system.

Customers can browse products from different categories, place orders, and purchase multiple products in a single order.

The database is designed to simulate real-world business scenarios for SQL practice.

---

## Database Information

- **Database:** PostgreSQL
- **Version:** 17
- **Encoding:** UTF-8

---

## Tables

| Table | Description |
|--------|-------------|
| customers | Stores customer information |
| categories | Stores product categories |
| products | Stores product information |
| orders | Stores customer orders |
| order_items | Stores products included in each order |

---

## Relationships

```text
customers
----------
customer_id (PK)
name
email

        │ 1:N
        ▼

orders
----------
order_id (PK)
customer_id (FK)
order_date

        │ 1:N
        ▼

order_items
----------
order_item_id (PK)
order_id (FK)
product_id (FK)
quantity

        │
        ▼

products
----------
product_id (PK)
category_id (FK)
price

        │
        ▼

categories
----------
category_id (PK)
category_name
```

---

## Initial Dataset

Approximate initial dataset

The dataset will be expanded as more advanced SQL topics are learned.

---

## Learning Objectives

This database is designed to practice:

- Basic SQL queries (SELECT, WHERE, ORDER BY)
- Aggregate functions (COUNT, SUM, AVG, MIN, MAX)
- JOIN operations
- Subqueries
- Common Table Expressions (CTE)
- Window Functions
- Transactions
- Indexes and query optimization

---

## Future Expansion

The database will gradually be extended with additional modules, including:

- Payments
- Shipping
- Suppliers
- Inventory
- Employees
- Product Reviews

These additions will provide more realistic business scenarios and support more advanced SQL practice.

---

## Notes

- This database is created for learning purposes only.
- The schema and dataset will evolve as new SQL concepts are introduced.
- Future versions will include larger datasets to practice query optimization using `EXPLAIN` and `EXPLAIN ANALYZE`.
