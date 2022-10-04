
--- create tables and import data from csv
CREATE TABLE departments (
  "dept_no" VARCHAR(6) NOT NULL,
  "dept_name" VARCHAR(20) NOT NULL,
  CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no")
);
CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dept_no VARCHAR(6) NOT NULL
);
CREATE TABLE dept_manager (
  dept_no VARCHAR(6) NOT NULL,
  emp_no integer NOT NULL
);
CREATE TABLE employees (
  emp_no integer NOT NULL,
  emp_title VARCHAR(6) NOT NULL,
  birth_date VARCHAR,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  sex VARCHAR(9),
  hire_date varchar,
  CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no")
);
CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer NOT NULL
);	
CREATE TABLE titles (
  title_id VARCHAR(6) NOT NULL,
  title VARCHAR(20) NOT NULL,
  CONSTRAINT "pk_titleid" PRIMARY KEY (
        "title_id")
);
----emp_no,dept_no are foreign key in dept_manager table
----emp_no is foreign key in salaries table
----emp_no,dept_no are foreign key in dept_emp table
