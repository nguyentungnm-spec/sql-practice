# Notes

## What I Learned

### What is a Transaction?

A transaction is a sequence of SQL statements executed as a single unit of work.

Either all statements succeed, or none of them are applied.

---

## BEGIN

Starts a new transaction.

```sql
BEGIN;
```

---

## COMMIT

Permanently saves all changes made during the transaction.

```sql
COMMIT;
```

---

## ROLLBACK

Cancels all changes made during the current transaction.

```sql
ROLLBACK;
```

---

## SAVEPOINT

Creates a checkpoint inside a transaction.

You can roll back to the savepoint without cancelling the entire transaction.

---

## ACID Properties

### Atomicity

All operations succeed or all fail.

### Consistency

The database remains in a valid state before and after the transaction.

### Isolation

Concurrent transactions do not interfere with each other.

### Durability

Once committed, changes remain even if the system crashes.

---

## Isolation Levels

PostgreSQL supports:

* Read Uncommitted (treated as Read Committed)
* Read Committed (default)
* Repeatable Read
* Serializable

---

## Real-world Applications

Transactions are essential in systems such as:

* Bank transfers
* E-commerce checkout
* Inventory updates
* Payment processing
* Ticket booking
* Order management

Without transactions, partial updates could leave the database in an inconsistent state.
