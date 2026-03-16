--Get employees whose salary is greater than average
SELECT name, salary
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);
