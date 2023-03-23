CREATE database details_db;
use details_db;

-- creating table
create table department(
	dept_no int auto_increment primary key,
    dept_name varchar(255) not null,
    location varchar(255) not null
);

create table employee(
	emp_no int auto_increment primary key,
    emp_name varchar(255) not null, 
    dob date not null,
    address varchar(255),
    doj date not null,
    mobile_no bigint not null,
    dept_no int,
    foreign key(dept_no) references department(dept_no),
    salary int not null
);
-- Add a new column Designationtotheemployeetable
alter table employee add designation varchar(255) not null;


desc employee;

-- Drop the columnlocationfrom Dept table
alter table department drop column location;

-- Drop the tables
drop table employee;

-- Drop the database
drop database details_db;

-- misc
-- ALTER TABLE employee ADD FOREIGN KEY (dept_no) REFERENCES department(dept_no);
 -- show tables;