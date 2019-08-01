-- 1. Create a Departments table
CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);
--Import CSV
SELECT * FROM departments

-- 2. Create Employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    birth_date date,
    first_name varchar,
	last_name varchar,
	gender varchar,
	hire_date date
);
--Import CSV
SELECT * FROM employees

-- 3. Create Department Manager table
CREATE TABLE dept_manager (
    dept_no VARCHAR,
    emp_no INT,
	from_date date,
	to_date date
);
--Import CSV
SELECT * FROM dept_manager

-- 4. Create Department Employee table
CREATE TABLE dept_emp (
    emp_no INT,
	dept_no VARCHAR,
	from_date date,
	to_date date
);
--Import CSV
SELECT * FROM dept_emp

-- 5. Create Salaries table
CREATE TABLE salaries (
    emp_no INT,
	salaries INT,
	from_date date,
	to_date date
);
--Import CSV
SELECT * FROM salaries

-- 5. Create Titles table
CREATE TABLE titles (
    emp_no INT,
	titles VARCHAR,
	from_date date,
	to_date date
);
--Import CSV
SELECT * FROM titles