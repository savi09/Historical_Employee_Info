CREATE TABLE titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL
);

CREATE TABLE salaries (
    emp_no INTEGER,
    salary INTEGER
)

CREATE TABLE employees(
    emp_no  INTEGER,
    emp_title_id VARCHAR,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE
)

CREATE TABLE dept_manager (
    dept_no VARCHAR,
    emp_no INTEGER
)

CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR
)

CREATE TABLE departments (
    dept_no VARCHAR,
    dept_name VARCHAR
)  