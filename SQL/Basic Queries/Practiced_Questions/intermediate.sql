
-- Intermediate Questions --

-- Count employees department-wise
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- Average salary department-wise
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- Employees from Pune or Mumbai
SELECT * FROM employees
WHERE city IN ('Pune', 'Mumbai');

-- Employees whose name starts with 'A'
SELECT * FROM employees
WHERE emp_name LIKE 'A%';

-- Top 3 highest salaries
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 3;