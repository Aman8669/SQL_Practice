SELECT * FROM employee_data;

--retrive table whose age is greater than 40 and salary is greater than 50000
SELECT first_name, last_name, salary,age
FROM employee_data
WHERE age >= 40 AND salary >= 50000;

-- retrive the table whose belongs to the IT department or age is greater than 30
SELECT first_name, last_name, department,age
FROM employee_data
WHERE department = 'IT' OR age >= 30;

-- retrive the table whose not belongs to the IT department
SELECT * FROM employee_data
WHERE NOT department = 'IT';

-- Retrive table whose salary between 40,000 to 60,000 using BETWEEN Operator
SELECT first_name, last_name, salary
FROM employee_data
WHERE salary BETWEEN 40000 AND 60000;

-- Retrive table whose email id ends with @gmail.com using LIKE Operator
SELECT first_name, last_name, email
FROM employee_data
WHERE email LIKE '%@gmail.com';

--retrive table whose belongs to Marketing and Finance department using IN Operator
SELECT first_name, last_name, department
FROM employee_data
WHERE department IN ('Marketing','Finance');


