CREATE DATABASE EhtishamHamzaFaraz;
USE EhtishamHamzaFaraz;

CREATE TABLE STUDENT1(
    STUDENTID INT PRIMARY KEY,
    FIRSTNAME VARCHAR(50) NOT NULL,
    LASTNAME VARCHAR(50),
    AGE INT CHECK (AGE >= 20)
);

INSERT INTO STUDENT1 VALUES (1,'EHTISHAM','MUBASHER',21);
INSERT INTO STUDENT1 VALUES (2,'NAWAAZ','HAMZA',20);
INSERT INTO STUDENT1 VALUES (3,'Faraz','Ahmad',20);

SELECT * FROM STUDENT1;

CREATE TABLE employees(
    employeeID INT PRIMARY KEY,
    age INT DEFAULT 0
);

INSERT INTO employees(employeeID) VALUES (3);

SELECT * FROM employees;

CREATE TABLE empdata1(
    employeeID INT PRIMARY KEY,
    HireDate DATETIME DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM empdata1;


alter table STUDENT1 add email varchar(100);
insert into STUDENT1 values(4,'Ehtisham','Mubasher',20,'ahtisham@gmail.com');
select * from STUDENT1;


alter table STUDENT1  drop column LASTNAME;
select * from STUDENT1;
truncate TABLE STUDENT1;


RENAME TABLE STUDENT1 TO SECTIONA;

select * from SECTIONA;

