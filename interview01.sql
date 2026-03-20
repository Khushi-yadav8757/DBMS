🔹 What is SQL? 

SQL (Structured Query Language) is a standard programming language used to store, retrieve, manipulate, and manage data in a relational database.

👉 In simple words:
SQL is used to talk to databases.

🔹 Real-Life Example

Imagine a student database:

id	name	marks
1	Kaira	90
2	Rahul	75


All students → SQL query
Students with marks > 80 → SQL query
Update marks → SQL query

🔹 Types of SQL Commands
5
1. DDL (Data Definition Language)
Used to define structure

CREATE TABLE students(id INT, name VARCHAR(50));
ALTER TABLE students ADD age INT;
DROP TABLE students;

2. DML (Data Manipulation Language)
Used to modify data

INSERT INTO students VALUES (1, 'Kaira', 90);
UPDATE students SET marks = 95 WHERE id = 1;
DELETE FROM students WHERE id = 1;

3. DQL (Data Query Language)
Used to fetch data 

SELECT * FROM students;
SELECT name FROM students WHERE marks > 80;

4. DCL (Data Control Language)
Used for permissions

GRANT SELECT ON students TO user;
REVOKE SELECT ON students FROM user;

5. TCL (Transaction Control Language)
Used to manage transactions

COMMIT;
ROLLBACK;

🔹 Why SQL is Important?

✔ Used in Data Analyst, Data Science, Backend roles
✔ Works with tools like MySQL, PostgreSQL, Oracle
✔ Helps in:

Data analysis
Reporting
Dashboard creation

🔹 Key Features of SQL

Easy to learn (English-like syntax)
Works with large data
Standard language (used worldwide)
Supports complex queries

🔹 Interview Answer (Best Way to Say)

SQL is a standard language used to interact with relational databases. It helps in storing, retrieving, updating, and managing data using commands like SELECT, INSERT, UPDATE, and DELETE.
