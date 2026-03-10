/* =====================================================
   PRACTICAL NO. 02
   DDL Commands, Constraints & Primary Key
   MySQL Version
   ===================================================== */

/* =========================
   1. CREATE DATABASE
========================= */

CREATE DATABASE CompanyDB;
USE CompanyDB;


/* =========================
   2. DDL COMMANDS
========================= */

/* CREATE TABLE */
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE
);

/* ALTER TABLE - ADD COLUMN */
ALTER TABLE Employees
ADD Email VARCHAR(100);

/* ALTER TABLE - MODIFY COLUMN */
ALTER TABLE Employees
MODIFY Email VARCHAR(255);

/* ALTER TABLE - DROP COLUMN */
ALTER TABLE Employees
DROP COLUMN Email;

/* TRUNCATE TABLE */
TRUNCATE TABLE Employees;

/* RENAME TABLE */
RENAME TABLE Employees TO Staff;
RENAME TABLE Staff TO Employees;


/* =========================
   3. CONSTRAINTS
========================= */

/* NOT NULL */
CREATE TABLE Employees_NotNull (
    EmployeeID INT NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL
);

/* UNIQUE */
CREATE TABLE Employees_Unique (
    EmployeeID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE
);

/* CHECK */
CREATE TABLE Employees_Check (
    EmployeeID INT PRIMARY KEY,
    HireDate DATE CHECK (HireDate >= '2000-01-01')
);

/* DEFAULT */
CREATE TABLE Employees_Default (
    EmployeeID INT PRIMARY KEY,
    HireDate DATE DEFAULT (CURRENT_DATE)
);


/* =========================
   4. PRIMARY KEY
========================= */

/* Primary Key while creating table */
CREATE TABLE Employees_PK (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

/* Add Primary Key to existing table */
CREATE TABLE Transactions (
    TransactionID INT,
    Amount DECIMAL(10,2)
);

ALTER TABLE Transactions
ADD PRIMARY KEY (TransactionID);


/* =========================
   5. PRACTICE SCENARIOS
========================= */

/* Scenario 1 */
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) CHECK (Price > 0),
    StockQuantity INT DEFAULT 0
);

/* Scenario 2 */
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

ALTER TABLE Customers
ADD DateOfBirth DATE;

/* Scenario 3 */
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY
);

DROP TABLE Orders;

/* Scenario 4 */
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100) UNIQUE,
    ContactEmail VARCHAR(100) UNIQUE
);

/* Scenario 5 */
CREATE TABLE Transactions2 (
    TransactionID INT,
    Amount DECIMAL(10,2)
);

ALTER TABLE Transactions2
ADD PRIMARY KEY (TransactionID);

/* Scenario 6 */
ALTER TABLE Customers
ADD PhoneNumber INT;

ALTER TABLE Customers
MODIFY PhoneNumber VARCHAR(15);

/* Scenario 7 */
CREATE TABLE Orders2 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    CONSTRAINT FK_CustomerOrders
    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
);

ALTER TABLE Orders2
DROP FOREIGN KEY FK_CustomerOrders;

/* Scenario 8 */
CREATE TABLE Events (
    EventID INT PRIMARY KEY,
    EventName VARCHAR(100),
    EventDate DATE DEFAULT (CURRENT_DATE)
);

/* Scenario 9 */
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100)
);

ALTER TABLE Projects
MODIFY ProjectName VARCHAR(100) NOT NULL;

/* Scenario 10 */
ALTER TABLE Employees
ADD MiddleName VARCHAR(50);

ALTER TABLE Employees
DROP COLUMN MiddleName;