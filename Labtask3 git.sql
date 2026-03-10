
CREATE DATABASE CompanyDB;
USE CompanyDB;
CREATE TABLE Departments (
    DeptID INT AUTO_INCREMENT PRIMARY KEY,
    DeptName VARCHAR(100) NOT NULL,
    Location VARCHAR(100) DEFAULT 'Head Office'
);

CREATE TABLE Employees (
    EmpID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT CHECK (Age BETWEEN 18 AND 65),
    HireDate DATE DEFAULT (CURRENT_DATE),
    DeptID INT,
    CONSTRAINT fk_department
        FOREIGN KEY (DeptID)
        REFERENCES Departments(DeptID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

INSERT INTO Departments (DeptName, Location)
VALUES 
('Human Resources', 'New York'),
('Information Technology', 'San Francisco'),
('Finance', 'Chicago');

INSERT INTO Employees (FirstName, LastName, Age, HireDate, DeptID)
VALUES 
('Alice', 'Smith', 28, CURRENT_DATE, 1),
('Bob', 'Johnson', 45, CURRENT_DATE, 2);

INSERT INTO Employees (FirstName, LastName, Age, DeptID)
VALUES 
('Charlie', 'Brown', 30, 3);

SELECT * FROM Departments;
SELECT * FROM Employees;