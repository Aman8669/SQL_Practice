SELECT * FROM employee_data;

-- show employees whose salary column is null
SELECT first_name, last_name, salary
FROM employee_data
WHERE salary IS NULL;

-- list employees sorted by salary in DESENDING order
SELECT first_name, last_name, salary
FROM employee_data
ORDER BY salary DESC;


-- Retrive List Of Unique Department 
SELECT DISTINCT department 
FROM employee_data;

-- Retrive List Of count Unique Department and show on unique_department column 
SELECT  COUNT  (DISTINCT department) as total_unique_department
FROM employee_data;



