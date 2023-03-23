create database org_db;
use org_db;

create table department(
	dept_no int primary key,
    dept_name varchar(50),
    location varchar(50)
);

create table employee(
	emp_no int primary key, 
	emp_name varchar(25), 
	dob date, 
	address varchar(255), 
	doj date, 
	mobile_no bigint,
	dept_no int, 
	salary bigint,
    foreign key(dept_no) references department(dept_no)
);

insert into department values(
	
	), (
	), (
);
