CREATE TABLE  employees(
emp_id SERIAL PRIMARY KEY,
emp_name VARCHAR(50),
department VARCHAR(30),
joining_date DATE,
last_promotion DATE,
contract_end DATE
);

INSERT INTO employees
(emp_name,department,joining_date,last_promotion,contract_end)
VALUES
('Amit','IT', '2021-01-15', '2023-06-20','2026-12-31'),
('Priya', 'HR', '2022-03-10', '2024-01-12', '2027-03-09'),
('Rahul', 'Finance', '2020-07-25', '2022-08-15', '2025-12-31'),
('Sneha', 'Sales', '2019-11-01', '2021-11-15', '2026-10-31'),
('Arjun', 'IT', '2023-04-18', '2024-05-01', '2028-04-17'),
('Neha', 'Marketing', '2021-09-20', '2023-09-20', '2026-09-19'),
('Vikas', 'Support', '2020-02-14', '2023-02-14', '2025-08-31'),
('Pooja', 'HR', '2024-01-08', '2025-01-08', '2029-01-07'),
('Rohan', 'Finance', '2018-06-12', '2022-07-01', '2025-06-30'),
('Kiran', 'IT', '2022-10-05', '2024-10-05', '2027-10-04');

--ADD 30 DAYS TO EVERY EMPLOYEES CONTRACT END DATE

SELECT emp_name,contract_end,
contract_end+INTERVAL '30 days' AS extended_contract
FROM employees;

--Add 6 months to joining date
SELECT emp_name,joining_date,
joining_date + INTERVAL '6 months' AS extended_date
FROM employees;

--Find how many days each employee has worked
SELECT emp_name,
CURRENT_DATE - joining_date AS days_worked
FROM employees;

--Find years of experience
SELECT emp_name,
AGE(CURRENT_DATE,joining_date)
FROM employees;

---Days left until contract ends
SELECT emp_name,
contract_end-CURRENT_DATE AS days_remain
FROM employees;

--Employees who joined more than 3 years ago
SELECT *
FROM employees
WHERE joining_date <= CURRENT_DATE - INTERVAL '3 years';
--Employees promoted in the last 2 years
SELECT *
FROM employees
WHERE last_promotion >= CURRENT_DATE - INTERVAL '2 years';

--Next promotion after 1 year

SELECT
emp_name,
last_promotion,
last_promotion + INTERVAL '1 year' AS next_promotion
FROM employees;
