create database school;
use school;

create table persons2(
PersonID int auto_increment primary key,
LastName varchar(255) not null,
FirstName varchar(255),
age int
);

create table customer(
customerID int primary key,
name Varchar(50) not null,
phone varchar(50) unique
);

 create table orders1(
 orderid int primary key,
 orderdate date not null,
 customerID int foreign key reference customer(customerID)
 );
 
insert into customer values(1,'ahmad',"03001234567"),(2,"fiza","03211234567");
insert into orders1 values(1,'2023-06-10',1),(1,'2024-06-10',2);

