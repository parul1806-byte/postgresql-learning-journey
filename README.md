# postgresql-learning-journey
This repository contains my structured PostgreSQL practice using pgAdmin 4. It covers table creation, data insertion, filtering, sorting, joins, aggregate functions, subqueries, and real-world query problems. All SQL scripts are organized by topic for revision, learning, and showcasing SQL proficiency.
This repository contains my complete PostgreSQL practice using pgAdmin 4.

It includes:

- ✅ Table creation using `CREATE TABLE`, constraints, data types
- ✅ Insertion of sample data using `INSERT INTO`
- ✅ SELECT queries with filters (`WHERE`, `BETWEEN`, `LIKE`, etc.)
- ✅ JOIN operations: `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `SELF JOIN`
- ✅ Aggregate functions: `SUM()`, `AVG()`, `COUNT()`, `GROUP BY`, `HAVING`
- ✅ Subqueries and nested queries
- ✅ Sorting, limiting results (`ORDER BY`, `LIMIT`, `OFFSET`)
- ✅ Use of aliases, string/date functions, and arithmetic operations
- ✅ Real-world query challenges and interview-style problems
- ✅ Organized `.sql` files for different topics and chapters
# SQL Practice – CRUD & Constraints

This file contains a list of SQL practice tasks covering CRUD operations, ALTER TABLE usage, and constraints handling.

---

## 🔁 CRUD Operations

- INSERT a new employee named John Doe, salary 50000, department 2, hired today.
- INSERT a department named Finance with id = 3.
- SELECT all employees from the table.
- UPDATE salary of employee with emp_id = 1 to 60000.
- DELETE the employee with email = 'john@example.com'.

---

## 🔧 ALTER TABLE

- Add a new column bonus to the employees table.
- Remove column bonus from the employees table.
- Change salary column data type from DECIMAL to INTEGER.
- Make f_name column NOT NULL.
- Drop the UNIQUE constraint from the email column.

---
# SQL String Functions & Queries – Practice Set

This psql_string_fun_practice_question.sql contains SQL practice questions covering **string functions**, **aggregation**, and **filtering**.

## Questions

1. Show the full name (`f_name + l_name`) of all employees in a single column.  
2. Show the full name with a space in between using `CONCAT_WS`.  
3. Display only the first 3 letters of each employee’s first name.  
4. Display only the last 2 letters of each employee's last name.  
5. Show the length of each employee’s full name (first + last).  
6. Show all employees' first names in uppercase.  
7. Show all employees' last names in lowercase.  
8. Remove extra spaces from the start and end of department names using `TRIM`.  
9. Remove spaces from the left side of department names.  
10. Remove spaces from the right side of department names.  
11. Replace the domain `"email.com"` in email addresses with `"company.com"`.  
12. Find the position of the letter `'a'` in each employee's first name.  
13. Show only employees whose first name contains `'a'` in the second position.  
14. Extract the first letter of first name and first letter of last name as initials.  
15. Display emails in the format: `FIRSTNAME_LASTNAME@company.com`.  
16. Show the last 4 characters of each email address.  
17. Show the first 5 characters of each employee's email.  
18. Find all employees whose email contains `"verma"`.  
19. Find all employees whose last name starts with `"S"`.  
20. Find all employees whose first name ends with `"t"`.  
21. Count how many employees have `'a'` in their first name.  
22. Count employees whose last name is more than 5 characters long.  
23. Find the employee with the longest first name.  
24. Find the employee with the shortest last name.  
25. Display department names in uppercase with their lengths.  
26. Show all employees with their names reversed.  
27. Replace the first letter of each first name with `'X'`.  
28. Show all employees whose first name length is even.  
29. Show department names without the letter `'e'`.  
30. Show employees whose email username (before `@`) is shorter than 8 characters.  
---

All queries were written and tested in **pgAdmin 4**, and exported here to track my learning progress, revision, and GitHub portfolio.
