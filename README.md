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

## 📌 Constraints Practice

- Try to insert an employee with a duplicate email → should throw UNIQUE constraint error.
- Try to insert an employee with salary = -1000 → should fail due to CHECK constraint.
- Try to insert an employee with dept_id = 99 → should fail due to FOREIGN KEY constraint.

All queries were written and tested in **pgAdmin 4**, and exported here to track my learning progress, revision, and GitHub portfolio.
