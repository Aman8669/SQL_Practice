
-- Started solving basic sql queries

-- View all employees
SELECT * FROM employees;

-- Show employee names and salaries
SELECT emp_name, salary FROM employees;

-- Employees from IT department
SELECT * FROM employees
WHERE department = 'IT';

-- Employees with salary greater than 50000
SELECT * FROM employees
WHERE salary > 50000;

-- Sort employees by salary
SELECT * FROM employees
ORDER BY salary DESC;
