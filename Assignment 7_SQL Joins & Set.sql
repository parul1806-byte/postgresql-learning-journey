 -- Employees table
 CREATE TABLE Employees (
   EmpID INT PRIMARY KEY,
   EmpName VARCHAR(50),
   DepartmentID INT
 );
 INSERT INTO Employees (EmpID, EmpName, DepartmentID) VALUES
   (1, 'Alice',   101),
   (2, 'Bob', 	102),
   (3, 'Charlie', 103),
   (4, 'Diana',   NULL),
   (5, 'Eve', 	101);

 -- Departments table
 CREATE TABLE Departments (
   DepartmentID INT PRIMARY KEY,
   DeptName VARCHAR(50),
   Location VARCHAR(50)
 );
 INSERT INTO Departments (DepartmentID, DeptName, Location) VALUES
   (101, 'HR',   	'New York'),
   (102, 'IT',   	'San Francisco'),
   (103, 'Finance',  'Chicago'),
   (104, 'Sales',	'Boston');


--SQL Tasks
--a) Inner Join: List all employees with assigned department names.
select  e.EmpName , d. DeptName
from Employees as e
inner join  Departments as d 
on e.DepartmentID = d.DepartmentID;

--b) Left Join: Show all employees, with department name if assigned (NULL if not).
select  e.EmpName , d. DeptName
from Employees as e
left join  Departments as d 
on e.DepartmentID = d.DepartmentID;

--c Right Join: Show all departments, with employee name if exists (NULL if none).
select  e.EmpName , d. DeptName
from Employees as e
right join  Departments as d 
on e.DepartmentID = d.DepartmentID;

-- d) Full Outer Join: Include all employees and departments, matching where possible.
select  e.EmpName , d. DeptName
from Employees as e
full outer join  Departments as d 
on e.DepartmentID = d.DepartmentID;

--e Cross Join: Generate every combination of employee names and department names.
select  e.EmpName , d. DeptName
from Employees as e
cross join  Departments as d ;

-- f Union All: Create a list combining all employee names and department names in one 
select  EmpName   from Employees
union all
select  DeptName from Departments ;

--g Intersect: Find department IDs present in both tables.
select DepartmentID  from Employees
Intersect
select DepartmentID from Departments ;

--h Except: List department IDs in Departments but not in Employees.
select DepartmentID  from Employees
 Except
select DepartmentID from Departments ;
   