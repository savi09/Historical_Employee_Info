CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR NOT NULL
);

CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR
);

CREATE TABLE employees(
    emp_no  INTEGER PRIMARY KEY,
    emp_title_id VARCHAR REFERENCES titles(title_id),
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE
);

CREATE TABLE salaries (
    emp_no INTEGER REFERENCES employees(emp_no),
    salary INTEGER
);

CREATE TABLE dept_manager (
    dept_no VARCHAR REFERENCES departments(dept_no),
    emp_no INTEGER REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
    emp_no INTEGER REFERENCES employees(emp_no),
    dept_no VARCHAR REFERENCES departments.dept_no
);


/*

-- Checking imports
SELECT * FROM titles LIMIT 10;
SELECT * FROM departments LIMIT 10;
SELECT * FROM employees LIMIT 10;
SELECT * FROM salaries LIMIT 10;
SELECT * FROM dept_manager LIMIT 10;
SELECT * FROM dept_emp LIMIT 10;

-- Forgot to add PK and FK
DROP TABLE employees;
DROP TABLE titles;
DROP TABLE salaries;
DROP TABLE dept_manager;
DROP TABLE dept_emp;
DROP TABLE departments;

-- ERD (Not SQL)

employees
-
emp_no  INTEGER PK 
emp_title_id VARCHAR FK >- titles.title_id
birth_date DATE
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date DATE

titles
-
title_id VARCHAR PK
title VARCHAR 

salaries 
-
emp_no INTEGER FK - employees.emp_no
salary INTEGER

dept_manager
-
dept_no VARCHAR  FK - departments.dept_no
emp_no INTEGER FK - employees.emp_no

dept_emp
-
emp_no INTEGER FK - employees.emp_no
dept_no VARCHAR FK >- departments.dept_no

departments
-
dept_no VARCHAR PK
dept_name VARCHAR
*/