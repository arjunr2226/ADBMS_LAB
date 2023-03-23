create database banking;
use banking;
create table customer(
	Cid int primary key, 
	Cname varchar(255)
);
create table account(
	Ano int primary key, 
	Atype varchar(10) check(Atype like 'S' or 'C'), 
	balance int,
	Cid int, 
	foreign key(Cid) 
	references customer(Cid)
);
create table transaction(
	Tid int primary key, 
    Ano int,
    Ttype  varchar(20) check(Ttype like 'D' or 'W'), 
    Tdate date, 
    Tamount int
);
CREATE SEQUENCE Customer_Sequence START WITH 1 INCREMENT BY 10;
ALTER TABLE customer ADD CID INTEGER DEFAULT NEXT VALUE FOR Customer_Sequence;