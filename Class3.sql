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
-------------------------------------------------------------------------------------
Q1. What is a transaction?

Answer:
A transaction is a sequence of database operations that are executed as a single logical unit of work. It must satisfy ACID properties.

Q2. Define Atomicity.

Answer:
Atomicity means all or nothing. Either all operations of a transaction are executed successfully or none are executed.

Q3. What is Consistency?

Answer:
Consistency ensures that a transaction brings the database from one valid state to another valid state.

Q4. Define Isolation.

Answer:
Isolation ensures that one transaction does not interfere with the execution of another transaction.

Q5. What is Durability?

Answer:
Durability ensures that once a transaction is committed, its changes remain permanent even after system failure.

Q6. What is a schedule?

Answer:
A schedule is an order in which the operations of multiple transactions are executed.

Q7. What is a serial schedule?

Answer:
A serial schedule executes one transaction completely before starting another transaction.

Q8. Define Deadlock.

Answer:
Deadlock is a situation where two or more transactions wait indefinitely for each other to release locks.

Q9. What is a lock?

Answer:
A lock is a mechanism used to control access to data items to maintain consistency during concurrent transactions.

Q10. What is Write Ahead Logging (WAL)?

Answer:
In WAL, log records are written to disk before actual data is written to the database.

🔹 5 MARK QUESTIONS (Most Important)
Q11. Explain ACID properties of transaction.

Answer:
ACID properties ensure reliable transaction processing:

Atomicity – Transaction executes completely or not at all.

Consistency – Database remains consistent after transaction.

Isolation – Transactions execute independently.

Durability – Committed changes are permanent.

Q12. Explain transaction states with diagram.

Answer:
Transaction states describe execution stages:

Active

Partially Committed

Committed

Failed

Aborted

(Exam Tip: Draw state diagram)

Q13. What is serializability? Explain its types.

Answer:
Serializability ensures that a non-serial schedule produces the same result as a serial schedule.

Types:

Conflict Serializability

View Serializability

Q14. Explain problems of concurrency.

Answer:

Lost Update – One update overwrites another

Dirty Read – Reading uncommitted data

Unrepeatable Read – Same read gives different values

Phantom Read – New rows appear during execution

Q15. Explain locking mechanism.

Answer:
Locking controls access to database items.

Types:

Shared Lock (Read only)

Exclusive Lock (Read + Write)

Q16. What is Two Phase Locking (2PL)?

Answer:
2PL has two phases:

Growing Phase – Locks are acquired

Shrinking Phase – Locks are released

Ensures conflict serializability.

Q17. Explain timestamp based protocol.

Answer:
Each transaction gets a timestamp. Older transactions get priority.
It avoids deadlock completely.

Q18. Explain log-based recovery.

Answer:
Uses logs to record changes.

UNDO – rollback incomplete transactions

REDO – reapply committed transactions

🔹 10 MARK QUESTIONS (Long Answer – Guaranteed)
Q19. Explain Deadlock. Describe methods to handle deadlock.

Answer:
Deadlock occurs when transactions wait for each other forever.

Handling Methods:

Deadlock Prevention

Deadlock Avoidance

Deadlock Detection

Deadlock Recovery

Q20. Explain concurrency control techniques.

Answer:
Concurrency control ensures correctness in multi-user DB.

Techniques:

Lock-based protocol

Timestamp protocol

Validation-based protocol

Q21. Explain recovery techniques in DBMS.

Answer:
Recovery techniques restore database after failure.

Log-based recovery

Checkpoints

Shadow paging

Q22. Compare Lock-based protocol and Timestamp protocol.

Answer:

Lock-Based	Timestamp
Uses locks	Uses time
Deadlock possible	No deadlock
Blocking occurs	No blocking
-----------------------------------------------------------------------------------------------------------
Q1. Explain Transaction and ACID Properties in detail.
Answer:
🔹 Transaction

A transaction is a sequence of database operations that performs a single logical task.
A transaction must be completed entirely or not executed at all.

Example:
Money transfer from Account A to B.

🔹 ACID Properties
1. Atomicity

Ensures all operations execute completely.

If any operation fails, the entire transaction is rolled back.

✔ Example: Debit happens but credit fails → rollback.

2. Consistency

Database moves from one valid state to another.

All constraints must be satisfied.

✔ Example: Total balance before and after remains same.

3. Isolation

Transactions execute independently.

Intermediate results are not visible to other transactions.

4. Durability

Once committed, changes are permanent.

Data remains even after system crash.

✅ Conclusion

ACID properties ensure data reliability, correctness, and safety.

Q2. Explain Transaction States with neat diagram.
Answer:

Transaction states represent the life cycle of a transaction.

🔹 Transaction States:

Active – Transaction is executing

Partially Committed – Last statement executed

Committed – Changes saved permanently

Failed – Error occurs

Aborted – Changes undone

📌 (In exam draw state diagram: Active → Partially committed → Committed)

✅ Importance

Helps in error handling and recovery.

Q3. What is Serializability? Explain its types.
Answer:
🔹 Serializability

A schedule is serializable if it produces the same result as some serial schedule.

🔹 Types of Serializability
1. Conflict Serializability

Uses conflict operations (Read–Write, Write–Read).

Uses precedence graph.

If graph has no cycle, schedule is serializable.

2. View Serializability

Based on view equivalence.

More flexible but complex.

Superset of conflict serializability.

✅ Conclusion

Conflict serializability is more practical and commonly used.

Q4. Explain concurrency control problems.
Answer:

Concurrency control problems occur when transactions execute simultaneously.

🔹 Problems:
1. Lost Update

One update overwrites another.

2. Dirty Read

Reading uncommitted data.

3. Unrepeatable Read

Same data gives different values on re-read.

4. Phantom Read

New rows appear during transaction.

✅ Solution

Solved using locking and timestamp protocols.

Q5. Explain Lock-Based Concurrency Control.
Answer:

Locking controls access to data items.

🔹 Types of Locks:

Shared Lock (S)

Read-only

Multiple transactions allowed

Exclusive Lock (X)

Read and write

Only one transaction allowed

🔹 Lock Compatibility
Lock	S	X
S	✔	❌
X	❌	❌
✅ Advantage

Maintains data consistency.

Q6. Explain Two Phase Locking Protocol (2PL).
Answer:

2PL ensures conflict serializability.

🔹 Phases of 2PL:
1. Growing Phase

Locks are acquired

No lock is released

2. Shrinking Phase

Locks are released

No new lock acquired

🔹 Types:

Basic 2PL

Strict 2PL

Rigorous 2PL

✅ Advantage

Ensures serializability

❌ Disadvantage

Deadlock possible

Q7. Explain Deadlock and its handling techniques.
Answer:
🔹 Deadlock

Occurs when two or more transactions wait indefinitely for each other’s resources.

🔹 Deadlock Handling Techniques:
1. Deadlock Prevention

Prevent circular wait.

2. Deadlock Avoidance

Use safe state (Banker’s Algorithm).

3. Deadlock Detection

Use wait-for graph.

4. Deadlock Recovery

Rollback transactions.

✅ Conclusion

Deadlock handling improves system reliability.

Q8. Explain Timestamp Based Protocol.
Answer:

Each transaction gets a timestamp.

🔹 Rules:

Older transaction gets priority.

If conflict occurs, younger transaction is rolled back.

🔹 Advantages:

No deadlock

No waiting

🔹 Disadvantages:

Starvation possible

Q9. Explain Recovery Techniques in DBMS.
Answer:

Recovery restores DB after failure.

🔹 Techniques:
1. Log-Based Recovery

Uses log files

Uses UNDO and REDO

2. Checkpointing

Reduces recovery time

3. Shadow Paging

Maintains shadow copy

✅ Importance

Ensures data durability.

Q10. Compare Lock-Based and Timestamp Protocol.
Lock-Based	Timestamp
Uses locks	Uses timestamps
Deadlock possible	No deadlock
Blocking occurs	No blocking
Slower
