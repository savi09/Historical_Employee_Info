-- List the following details of each employee: employee number, 
-- last name, first name, sex, and salary.

SELECT 
    emp.emp_no AS "Employee Number",
    emp.last_name AS "Last Name",
    emp.first_name AS "First Name",
    emp.sex AS "Sex",
    sal.salary AS "Salary"
FROM employees AS emp 
    LEFT JOIN salaries AS sal 
    ON emp.emp_no = sal.emp_no;

-- List first name, last name, and hire date for employees who were 
-- hired in 1986.
-- Source: https://www.postgresql.org/docs/8.1/functions-datetime.html

SELECT 
    emp.first_name AS "First Name",
    emp.last_name AS "Last Name",
    emp.hire_date AS "Hire Date"
FROM employees AS emp 
WHERE date_part('year', emp.hire_date) = 1986;

-- List the manager of each department with the following information: 
-- department number, department name, the manager’s employee number, 
-- last name, first name.

SELECT 
    dep.dept_no AS "Department Number",
    dep.dept_name AS "Department Name",
    emp.emp_no AS "Employee Number",
    emp.last_name AS "Last Name",
    emp.first_name AS "First Name"
FROM dept_manager 
    INNER JOIN departments AS dep 
    ON dept_manager.dept_no = dep.dept_no
    LEFT JOIN employees AS emp
    ON dept_manager.emp_no = emp.emp_no
;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT 
    emp.emp_no AS "Employee Number",
    emp.last_name AS "Last Name",
    emp.first_name AS "First Name",
    dep.dept_name AS "Department Name"
FROM departments AS dep 
    INNER JOIN dept_emp
    ON dep.dept_no = dept_emp.dept_no
    RIGHT JOIN employees AS emp
    ON dept_emp.emp_no = emp.emp_no;


-- List first name, last name, and sex for employees whose first name is 
-- “Hercules” and last names begin with “B.”

SELECT 
    emp.first_name AS "First Name",
    emp.last_name AS "Last Name",
    emp.sex AS "Sex"
FROM employees AS emp 
WHERE emp.first_name LIKE 'Hercules'
    AND emp.last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee 
-- number, last name, first name, and department name.



-- List all employees in the Sales and Development departments, including 
-- their employee number, last name, first name, and department name.



-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.

