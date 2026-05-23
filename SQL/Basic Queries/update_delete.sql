CREATE DATABASE users;

CREATE TABLE user_info(
	user_id serial PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(50) UNIQUE NOT NULL,
	department VARCHAR(50) NOT NULL,
	salary int
);

insert into user_info(user_id, username, email, department, salary)
values
(1,'Aman','aman@gmail.com','Data Science',100000),
(2,'Atul','Atul@gmail.com','Data Analyst',50000),
(3,'Ayan','ayan@gmail.com','Data Structure',200000),
(4,'Kuber','kuber@gmail.com','Data Science',100000);

SELECT * FROM user_info;

-- update single column
UPDATE user_info
SET department = 'MERN Stack Dev'
WHERE user_id = 4;

-- update multiple columns
UPDATE user_info
SET username='shridhar',email='shri@gmail.com',salary=56000
WHERE username = 'Ayan';

-- Get all Query in Ascending Order
SELECT * FROM user_info ORDER BY user_id ASC;

-- delete existing data
DELETE FROM user_info
WHERE user_id = 2;