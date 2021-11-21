--titles table 
drop table titles;
create table titles (
	title_id varchar primary key,
	title varchar (30)
);

select *
from titles;


--employees table 
drop table employees;
create table employees (
	emp_no varchar primary key,
	emp_title_id varchar (30),
	birth_date date,
	first_name varchar (30),
	last_name varchar (30),
	sex varchar (30),
	hire_date date,
	foreign key (emp_title_id) references titles (title_id)
);

select *
from employees;

--salaries table 
drop table salaries;
create table salaries (
	emp_no varchar,
	salary  int,
	primary key (emp_no, salary),
	foreign key (emp_no) references employees (emp_no)
);

select *
from salaries;



--departments table 
drop table departments;
create table departments (
	dept_no varchar (30) primary key,
	dept_name varchar (30)
);

select *
from departments;


--dept_emp table
drop table dept_emp;

create table dept_emp (
	emp_no varchar(30),
	dept_no  varchar (30),
	primary key (dept_no,emp_no),
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
);

select *
from dept_emp;

--dept_manager table 
drop table dept_manager;
create table dept_manager (
	dept_no varchar (30),
	emp_no varchar (30),
	primary key (dept_no,emp_no),
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
);

select *
from dept_manager;
