--What is an Index?

An index is a database structure that improves the speed of data retrieval operations on a table.
Just like a book index helps you find a topic quickly, a database index helps locate rows faster.

-- Why do we use Indexes?

Faster SELECT queries
Improves performance of WHERE, JOIN, ORDER BY
Very useful for large tables

-- Disadvantages:

Slower INSERT, UPDATE, DELETE
Requires extra storage

-- Types of Indexes
1️⃣ Primary Index
Automatically created
Applied on Primary Key
Values are unique and not null

CREATE TABLE student (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

2️⃣ Unique Index
Ensures all values in a column are unique
CREATE UNIQUE INDEX idx_email
ON users(email);

3️⃣ Composite Index
Index created on multiple columns
  
CREATE INDEX idx_name_age
ON employee(name, age);


-- Useful for queries like:

WHERE name = 'Amit' AND age = 25;

4️⃣ Clustered Index
Determines the physical order of data in a table
Only one clustered index per table
Usually created on primary key

5️⃣ Non-Clustered Index

Does not change physical order
Stored separately from table data
Multiple non-clustered indexes allowed

🔹 Clustered vs Non-Clustered Index
Feature	Clustered Index	Non-Clustered Index
Physical order	Yes	No
Number allowed	One	Multiple
Speed	Faster	Slightly slower
Example	Primary key	Name, Email
🔹 When NOT to use an Index?

Very small tables

Columns with low distinct values (e.g. gender)

Tables with frequent inserts/updates

🔹 Why do Indexes slow down INSERT operations?

Because every insert/update requires the index to be updated as well.

🔹 What is a B-Tree Index?

Most commonly used index type

Uses balanced tree structure

Search time complexity: O(log n)
