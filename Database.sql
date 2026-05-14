1. What is DBMS?
DBMS (Database Management System) is software used to create, store, manage, and retrieve data efficiently.

2. What is RDBMS?
RDBMS stores data in tables with rows and columns and maintains relationships using keys.

3. Difference between DBMS and RDBMS?
DBMS stores data generally; RDBMS stores related data in tables and supports constraints.

4. What is a primary key?
A primary key uniquely identifies each record and cannot contain NULL values.

5. What is a foreign key?
A foreign key creates a relationship between two tables by referencing a primary key.

6. What is a candidate key?
A candidate key is any attribute that can uniquely identify a row.

7. Difference between primary key and unique key?
Primary key cannot contain NULL and only one exists; unique key can contain NULL and multiple can exist.

8. What is a composite key?
A key formed using two or more columns together.

9. What is normalization?
Normalization reduces redundancy and improves data consistency.

10. What is 1NF?
Each column contains atomic (single) values and no repeating groups.
------------------------------------------------------------------------------------------------------
11. What is 2NF?
Table must be in 1NF and non-key attributes depend on the whole key.

12. What is 3NF?
Table must be in 2NF and non-key attributes should not depend on other non-key attributes.

13. What is BCNF?
A stricter version of 3NF where every determinant must be a candidate key.

14. What is denormalization?
Combining tables to improve read performance at the cost of redundancy.

15. What is SQL?
SQL is a language used to manage and manipulate databases.

16. Difference between DELETE, TRUNCATE, and DROP?
DELETE removes rows; TRUNCATE removes all rows; DROP deletes the whole table.

17. Difference between WHERE and HAVING?
WHERE filters rows before grouping; HAVING filters after grouping.

18. What is a JOIN?
JOIN combines rows from multiple tables based on a related column.

19. Types of joins?
Inner, Left, Right, Full, and Self Join.

20. What are ACID properties?
Atomicity, Consistency, Isolation, and Durability ensure reliable transactions.
------------------------------------------------------------------------------------------------------------------
21. What is a transaction?
A transaction is a sequence of operations executed as a single unit.

22. What is COMMIT?
COMMIT permanently saves changes to the database.

23. What is ROLLBACK?
ROLLBACK undoes changes if a transaction fails.

24. What is a deadlock?
A deadlock occurs when two or more transactions wait for each other indefinitely.

25. What is indexing?
Indexing improves data retrieval speed by creating a quick lookup structure.

26. Difference between clustered and non-clustered index?
Clustered changes physical data order; non-clustered creates a separate index structure.

27. What is a view?
A view is a virtual table created from SQL queries.

28. What is a schema?
Schema defines the logical structure of the database.

29. What is metadata?
Metadata is data about data, like table names and column types.

30. Why use DBMS?
DBMS improves security, consistency, sharing, and efficient data management.
