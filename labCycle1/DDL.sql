CREATE DATABASE ORG;
USE ORG;

CREATE TABLE department (
	dept_no INT PRIMARY KEY, 
	dept_name VARCHAR(50), 
    location VARCHAR(50)
);

CREATE TABLE employee (
	emp_no INT PRIMARY KEY,
	emp_name VARCHAR(50),
    DOB DATE, 
    address VARCHAR(50), 
    doj DATE, 
    mobile_no BIGINT UNIQUE, 
    dept_no INT, 
    salary INT,
    FOREIGN KEY(dept_no) REFERENCES department(dept_no)
);

SHOW TABLES;

DESC EMPLOYEE;
DROP TABLE EMPLOYEE, DEPARTMENT;
DROP DATABASE ORG;