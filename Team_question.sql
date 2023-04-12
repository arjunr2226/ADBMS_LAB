create database banking;
use banking;
create table customer(
	Cid int primary key, 
	Cname varchar(255)
);
create table account(
	Ano varchar(22) primary key, 
	Atype varchar(10) check(Atype like ('S' or 'C')), 
	balance int,
	Cid int, 
	foreign key(Cid) 
	references customer(Cid)
);

INSERT INTO ACCOUNT VALUES('A01', 'S', 20000, 101);
INSERT INTO ACCOUNT VALUES('A02', 'C', 22200, 102);
INSERT INTO ACCOUNT VALUES('A03', 'S', 20000, 103);
INSERT INTO ACCOUNT VALUES('A04', 'C', 50000, 104);
INSERT INTO ACCOUNT VALUES('A05', 'S', 100000, 105);
INSERT INTO ACCOUNT VALUES('A06', 'C', 55000, 106);
INSERT INTO ACCOUNT VALUES('A07', 'S', 45000, 107);

SELECT * FROM ACCOUNT;

DELETE FROM ACCOUNT;

create table transaction(
	Tid varchar(10) primary key, 
    Ano varchar(10),
    Ttype  varchar(20) check(Ttype like 'D' or 'W'), 
    Tdate date, 
    Tamount int
);

insert into customer values
	 (101, "Aswin"), 
	 (102,"Ayash"),
	 (103,"Amjad"),
	 (104,"Hrishi"),
	 (105,"Nidal"),
	 (106,"Naina"), 
	 (107, "Devika");

select * from customer;

insert into transaction(Tid, Ano, Ttype,Tdate, Tamount) values  ('T01', 'A01', 'D', '2019-01-01', 2000),
('T02', 'A02', 'W', '2020-05-25', 1500), 
('T03', 'A03', 'D', '2021-03-13', 5000),
('T04', 'A04', 'W', '2022-07-05', 6000),
('T05', 'A05', 'D', '2023-04-04', 7500);

SELECT * FROM TRANSACTION;

CREATE VIEW detailsView AS
SELECT *
FROM Account
WHERE Atype in ('S', 'C');

SELECT * FROM DETAILSVIEW;

DELETE FROM TRANSACTION;