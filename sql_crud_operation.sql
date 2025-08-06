-- creating a table name department
CREATE TABLE departments(
dept_id SERIAL PRIMARY KEY,
dept_name VARCHAR(20)
);
SELECT * FROM departments;

-- inserting values in the table
INSERT INTO departments(dept_name) 
VAlUES 
('HR'),
('Tech'),
('marketing'),
('HR'),
('marketing'),
('Tech');

-- creating a another table name employees
CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    f_name VARCHAR(40),
    l_name VARCHAR(40),
    email VARCHAR(50) UNIQUE,
    salary DECIMAL(10,2) CHECK(salary>0),
    dept_id INT ,
    hire_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id) 

);

INSERT INTO employees (emp_id, f_name, l_name, email, salary, dept_id, hire_date) VALUES
(101, 'Amit', 'Sharma', 'amit.sharma@email.com', 60000, 1, '2024-12-15'),
(102, 'Neha', 'Verma', 'neha.verma@email.com', 52000, 2, '2025-01-10'),
(103, 'Rahul', 'Sen', 'rahul.sen@email.com', 45000, 3, '2025-06-20'),
(104, 'Priya', 'Singh', 'priya.singh@email.com', 75000, 2, '2023-10-01'),
(105, 'Anil', 'Roy', 'anil.roy@email.com', 67000, 4, '2025-03-05'),
(106, 'Sana', 'Ali', 'sana.ali@email.com', 55000, 5, '2024-05-01');

-- CRUD (Create, Read, Update, Delete)
--1.INSERT a new employee named John Doe, salary 50000, department 2, hired today.
INSERT INTO employees(emp_id,f_name,l_name,salary,dept_id)
VALUES
(107,'john','doe',50000,2);

--2.INSERT a department named Finance with id = 3.
INSERT INTO departments(dept_id,dept_name)
VALUES
(3,'finance');
--ERROR:  duplicate key value violates unique constraint "departments_pkey"
--Key (dept_id)=(3) already exists. 

--3.SELECT all employees from the table.
SELECT * FROM employees;

--4.UPDATE salary of employee with emp_id = 1 to 60000.
UPDATE employees SET  salary = 60000
WHERE emp_id = 1;

--5.DELETE the employee with email = 'john@example.com'.
DELETE FROM employees 
WHERE email = 'john@example.com';

--6.ALTER TABLE to add a new column bonus to the employees table.
ALTER TABLE employees 
ADD COLUMN bonus;
--7.ALTER TABLE to remove column bonus from the employees table.
ALTER TABLE employees
DROP COLUMN bonus;
--8.ALTER TABLE to change the salary column data type from DECIMAL to INTEGER.
ALTER TABLE employees
ALTER COLUMN salary type INTEGER;

--Constraints Practice
--9.Try to insert an employee with a duplicate email → should throw UNIQUE constraint error.
INSERT INTO employees(emp_id,f_name,l_name,email,salary)
VALUES ('108','parul','pal','rahul.sen@email.com',650000)
--ERROR:  duplicate key value violates unique constraint "employees_email_key"

--10.Try to insert an employee with salary = -1000 → should fail due to CHECK constraint.
INSERT INTO employees(emp_id,f_name,l_name,email,salary)
VALUES ('109','pari','sharma','pari.sen@email.com',-10000);
--ERROR:  new row for relation "employees" violates check constraint "employees_salary_check"

--11.Try to insert an employee with dept_id = 99 (which doesn’t exist) → should fail due to FOREIGN KEY constraint
INSERT INTO employees(emp_id,f_name,l_name,email,dept_id,salary)
VALUES ('109','pari','sharma','pari.sen@email.com',99,10000);
--ERROR:  insert or update on table "employees" violates foreign key constraint "employees_dept_id_fkey"

--12.ALTER TABLE to make f_name column NOT NULL.
ALTER TABLE employees
ALTER COLUMN f_name SET NOT NULL;
--13.ALTER TABLE to drop the UNIQUE constraint from the email column.
ALTER TABLE employees
 DROP CONSTRAINTS employees_email_key;
 