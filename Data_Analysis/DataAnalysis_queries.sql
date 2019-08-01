-- DATA ANALYSIS:  SQL Code for questions below

--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
--Join Employees Table with Salaries table on employee as Employee Details tale 
--CREATE TABLE employee_info AS
SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    e.gender,
    s.salaries
from employees e
    JOIN salaries s on e.emp_no = s.emp_no

SELECT *
FROM employee_info
-- Save table as CSV File to Data_Analysis Folder
-- COPY (Select * From employee_info) To '/employee_info.csv' With CSV

--2. List employees who were hired in 1986.  
-- CREATE TABLE emp_hire_date AS
SELECT
    e.first_name,
    e.last_name,
    e.hire_date
FROM employees e
WHERE e.hire_date BETWEEN '1986-01-01' AND '1986-12-31'
-- ORDER BY e.hire_date asc/ desc OPTIONAL

-- Save table as CSV FILE to Data_Analysis Folder
-- COPY (Select * From emp_hire_date) To '/emp_hire_date.csv' With CSV


--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.  
-- Join Department tables with Department Manager table 
-- CREATE TABLE dept_mngr_info AS
SELECT 
    d.dept_no,
    d.dept_name,
    dm.emp_no,
    dm.from_date,
    dm.to_date
from departments d
    JOIN dept_manager dm on dm.dept_no = d.dept_no

-- Save table as CSV FILE to Data_Analysis Folder
-- COPY (Select * From dept_mngr_info) To '/dept_mngr_info.csv' With CSV


--4. List the department of each employee with the following information: employee number, last name, first name, and department name.  
-- Join Departments table with Department Employee table 
-- CREATE TABLE emp_by_dept AS 
SELECT
e.emp_no,
e.last_name,
e.first_name,
d.dept_name
from employees e
    JOIN dept_emp de on de.emp_no = e.emp_no
    JOIN departments d on d.dept_no = de.dept_no

-- Save table as CSV FILE to Data_Analysis Folder
-- COPY (Select * From emp_by_dept) To '/emp_by_dept.csv' With CSV


--5. List all employees whose first name is "Hercules" and last names begin with "B." 
-- CREATE TABLE HeruclesB_employees AS  
Select
    e.first_name,
    e.last_name
from employees e
WHERE
e.first_name = 'Hercules' and e.last_name like 'B%'

-- Save table as CSV FILE to Data_Analysis Folder
-- COPY (Select * From HeruclesB_employees) To '/HeruclesB_employees.csv' With CSV


--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.  
-- Join Departments table with Department Employee table 
-- CREATE TABLE sales_dept AS 
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
from employees e
    JOIN dept_emp de on de.emp_no = e.emp_no
    JOIN departments d on d.dept_no = de.dept_no
Where
	d.dept_name = 'Sales'

-- Save table as CSV FILE to Data_Analysis Folder
-- COPY (Select * From sales_dept) To '/sales_dept.csv' With CSV


--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.  
-- Join Departments table with Department Employee table 
-- CREATE TABLE dev_sales_dept AS 
SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
from employees e
    JOIN dept_emp de on de.emp_no = e.emp_no
    JOIN departments d on d.dept_no = de.dept_no
Where
	d.dept_name IN ('Sales', 'Development')

-- Save table as CSV FILE to Data_Analysis Folder
-- COPY (Select * From dev_sales_dept) To '/dev_sales_dept.csv' With CSV


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name. 
-- Use Employee table 
-- CREATE TABLE emp_lastname AS 
SELECT
    e.last_name, count(e.last_name) as Last_Name_Count
from employees e
GROUP BY 
e.last_name
ORDER BY 
Last_Name_Count desc 

-- Save table as CSV FILE to Data_Analysis Folder
-- COPY (Select * From emp_lastname) To '/emp_lastname.csv' With CSV

-----------------------------------------------------------------------------
--New tables created from above queries, this section is complete. YAY! 