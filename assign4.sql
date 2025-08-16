--table 1 employee table
CREATE TABLE Employees(
EmpID INT PRIMARY KEY,
Name VARCHAR(30),
Department VARCHAR(30),
Salary DECIMAL(10,2)
);

INSERT INTO Employees(EmpID,Name ,Department,Salary)
VALUES   
   (1, 'John Doe', 'HR', 50000),
   (2, 'Jane Smith', 'IT', 60000),
   (3, 'Alice Johnson', 'Finance', 55000),
   (4, 'Bob Brown', 'HR', 45000),
   (5, 'Charlie White', 'IT', 65000);
   
--TABLE 2 Departments table
CREATE TABLE departments(
DeptID INT PRIMARY KEY,
DeptName VARCHAR(50),
Location VARCHAR(50)
);

 INSERT INTO Departments (DeptID, DeptName, Location)
   VALUES (101, 'Sales', 'New York');


--    SQL Queries:
--a. Retrieve all employees:
SELECT * FROM Employees;

--b. List distinct departments from the Employees table:
SELECT DISTINCT Department FROM Employees;

--c. Find employees with salary > 55000:
SELECT Name FROM employees
WHERE Salary >55000;













