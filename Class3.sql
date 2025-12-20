📘 DBMS Unit 3 – Transaction Management & Concurrency Control

Unit-3 mainly deals with how databases handle multiple users safely and how data remains correct even if failures occur.

1️⃣ Transaction

A transaction is a sequence of database operations that forms one logical unit of work.

Example:
A → B ₹100 transfer
1. Debit ₹100 from A
2. Credit ₹100 to B


Both steps must happen together.

2️⃣ Transaction States

Active – Transaction is executing

Partially Committed – Final statement executed

Committed – Changes permanently saved

Failed – Error occurred

Aborted – Rolled back to previous state


3️⃣ ACID Properties ⭐ (VERY IMPORTANT)

Atomicity
→ All or nothing
→ If one step fails, entire transaction fails

Consistency
→ Database remains in a valid state

Isolation
→ Transactions don’t interfere with each other

Durability
→ Once committed, data is permanent
=

4️⃣ Schedules

A schedule is the order in which operations of transactions are executed.

Types:

Serial Schedule
→ One transaction after another

Non-Serial Schedule
→ Multiple transactions executed together

5️⃣ Serializability

A schedule is serializable if its result is same as some serial schedule.

Types:

Conflict Serializability

View Serializability


6️⃣ Concurrency Control

Used to manage simultaneous transactions without problems.

Problems without control:

Lost Update

Dirty Read

Unrepeatable Read

Phantom Read

7️⃣ Locking Mechanism 🔒
Types of Locks:

Shared Lock (S)
→ Only read allowed

Exclusive Lock (X)
→ Read + write allowed

8️⃣ Two Phase Locking Protocol (2PL)

Transaction has two phases:

Growing Phase
→ Locks are acquired

Shrinking Phase
→ Locks are released



9️⃣ Deadlock

When two or more transactions wait for each other forever.

Deadlock Handling:

Prevention

Avoidance

Detection

Recovery

🔟 Timestamp Based Protocol

Each transaction gets a timestamp.
Older transaction gets priority.

 Avoids deadlock completely.

🔟 Recovery Management

Used when system crashes.

Techniques:

Log Based Recovery

Checkpoints

Undo / Redo

🔟 Write Ahead Logging (WAL)

✔ Log is written before actual data
✔ Helps in crash recovery
