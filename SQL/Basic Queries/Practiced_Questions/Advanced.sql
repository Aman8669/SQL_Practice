
-- Advanced Practice Questions

-- INNER JOIN 
-- Return only matched record from both the tables
SELECT e.emp_name, p.project_name, p.budget
FROM employees e
INNER JOIN projects p
ON e.emp_id = p.emp_id;

-- Employees with project budget > 200000
SELECT e.emp_name, p.project_name
FROM employees e
JOIN projects p
ON e.emp_id = p.emp_id
WHERE p.budget > 200000;

-- Highest salary employee
SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);

-- Second highest salary
SELECT MAX(salary)
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);

-- Department-wise maximum salary
SELECT department, MAX(salary)
FROM employees
GROUP BY department;