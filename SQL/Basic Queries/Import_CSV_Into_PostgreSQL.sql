-- =====================================================
-- Project: Import CSV Data into PostgreSQL
-- Author: Aman Naikwade
-- Database: Employee_Records
-- Description:
-- This project demonstrates how to:
-- 1. Create a PostgreSQL database
-- 2. Create a table with constraints
-- 3. Import data from a CSV file
-- 4. Verify imported records
-- =====================================================

-- Step 1: Create Database
CREATE DATABASE Employee_Records;

-- Connect to Employee_Records database before executing the remaining queries

-- Step 2: Create Employee Table
CREATE TABLE employee_data (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary NUMERIC,
    joining_date DATE,
    age INT
);

-- Step 3: View Table Structure/Data
SELECT * FROM employee_data;

-- =====================================================
-- Method 1: Import CSV Using SQL COPY Command
-- Note:
-- COPY works only when the PostgreSQL server
-- has access to the CSV file location.
-- =====================================================

COPY employee_data
(employee_id, first_name, last_name, department, salary, joining_date, age)
FROM 'C:/path/to/employee_data.csv'
DELIMITER ','
CSV HEADER;

-- =====================================================
-- Method 2: Import CSV Using pgAdmin Tool
-- =====================================================
-- Steps:
--
-- 1. Open pgAdmin
-- 2. Expand Databases
-- 3. Select Employee_Records Database
-- 4. Open Tables
-- 5. Right-click employee_data
-- 6. Click Import/Export Data
-- 7. Select employee_data.csv
-- 8. Set:
--      Format     : CSV
--      Header     : Yes
--      Delimiter  : ,
-- 9. Click OK
--
-- Data will be imported into the table.
-- =====================================================

-- Step 4: Verify Imported Records
SELECT * FROM employee_data;

-- Count Total Records
SELECT COUNT(*) AS total_records
FROM employee_data;