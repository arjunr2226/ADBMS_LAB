CREATE database details_db;
use details_db;
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
alter table employee add designation varchar(255) not null;
alter table department add location varchar(255) not null;
desc employee;
desc department;

insert into employee(emp_name, dob, address, doj, mobile_no, salary, designation) values 
("ayashG", '2001-01-01', "ayash bhavan", "2021-05-25", 9876543211, 56000, "CEO"),
("aswinG", '2002-04-24', "aswin bhavan", "2021-04-15", 9867543251, 40000, "SEO"),
("AbhinandG", '2000-05-21', "Abhinand bhavan", "2020-03-05", 9876543212, 96000, "senior engineer"),
("RaisG", '1986-12-31', "Rais bhavan", "2016-07-24", 9876543541, 76000, "OG"),
("aravindG", '1999-08-11', "Aravind Nivas", "2019-09-01", 8976543211, 66000, "junior dev");

insert into department
select * from employee;
truncate table employee;