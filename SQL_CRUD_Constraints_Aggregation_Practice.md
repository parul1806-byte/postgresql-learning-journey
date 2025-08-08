# SQL CRUD, Constraints & Aggregation Practice

## 🔁 CRUD (Create, Read, Update, Delete)
1. INSERT a new employee named "John Doe", salary 50000, department 2, hired today.
2. INSERT a department named "Finance" with id 3.
3. SELECT all employees from the table.
4. UPDATE salary of employee with id = 1 to 60000.
5. DELETE the employee with email = 'john@example.com'.
6. Add a new column bonus to the employees table.
7. Remove column bonus from the employees table.
8. Change data type of salary from DECIMAL to INTEGER.

## 📌 Constraints Practice
9. Try to insert an employee with duplicate email → see constraint error.
10. Insert an employee with salary = -1000 → observe CHECK constraint.
11. Insert an employee with non-existent dept_id → check FOREIGN KEY constraint.
12. Add a NOT NULL constraint on first_name column.
13. Drop the UNIQUE constraint from email.

## 🔍 WHERE, LIKE, ORDER BY, DISTINCT, LIMIT
14. Get all employees with salary > 50000.
15. Find employees hired after '2024-01-01'.
16. Get employees whose first_name starts with 'A'.
17. Get employees whose email contains 'gmail'.
18. Find distinct department ids from employee table.
19. Get the top 3 highest paid employees.
20. Show employees ordered by hire_date DESC.
21. Show employees not in department 2.
22. Get employees whose last_name ends with 'son'.

## 📊 Aggregation (SUM, COUNT, AVG, MAX, MIN)
23. Count total number of employees.
24. Count how many employees are in each department.
25. Get average salary of all employees.
26. Get maximum and minimum salary.
27. Show total salary per department.
28. Count number of employees hired in 2025.
29. Show department with the highest total salary (use ORDER BY and LIMIT 1).
30. Show department having more than 3 employees (use HAVING).
