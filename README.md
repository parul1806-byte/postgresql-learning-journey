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
---
# SQL String Functions Practice Questions

This file contains 30 SQL practice questions covering string functions such as CONCAT, SUBSTR, LEFT, RIGHT, LENGTH, UPPER, LOWER, TRIM, REPLACE, POSITION, and more.

---

## 1. CONCAT, CONCAT_WS
1. Concatenate first_name and last_name of all employees.
2. Concatenate first_name, last_name, and email separated by commas.
3. Create a full address string by concatenating street, city, and state with a comma separator.

## 2. SUBSTR
4. Get the first 5 characters of each employee's email.
5. Extract the domain from each employee's email.
6. Show the last 4 characters of employee phone numbers.

## 3. LEFT, RIGHT
7. Get the LEFT 3 characters of first_name.
8. Get the RIGHT 2 characters of last_name.
9. Show the RIGHT 5 characters of postal codes.

## 4. LENGTH
10. Find the length of each employee's email.
11. Show employees whose first_name length > 5.
12. Get the average length of last_name.

## 5. UPPER, LOWER
13. Convert all first_name values to UPPERCASE.
14. Convert all last_name values to lowercase.
15. Show emails in uppercase where department_id = 2.

## 6. TRIM, LTRIM, RTRIM
16. Remove spaces from both sides of address field.
17. Remove spaces from the left side of city names.
18. Remove spaces from the right side of state names.

## 7. REPLACE
19. Replace 'gmail.com' with 'company.com' in emails.
20. Replace '-' with '' in phone numbers.
21. Replace spaces with underscores in last_name.

## 8. POSITION
22. Find the position of '@' in each email.
23. Find the position of 'son' in last_name.
24. Find the first occurrence position of 'a' in first_name.

## 9. Mixed String Functions
25. Extract domain from email and convert to uppercase.
26. Show employees whose email domain contains 'yahoo'.
27. Get first_name initials (first letter only) + '.' + last_name.
28. Mask all but last 4 digits of phone number with '*', e.g., '******1234'.
29. Show first 3 letters of last_name in uppercase + last 3 letters in lowercase.
30. Reverse the email string.

---

# PostgreSQL Table Alteration Questions

This repository contains a set of PostgreSQL `ALTER TABLE` practice questions.

---

1. Change the data type of the `age` column from INTEGER to SMALLINT.  
2. Rename the column `fullname` to `full_name`.  
3. Add a new column `email_verified` of type BOOLEAN with a default value FALSE.  
4. Drop the column `phone_number`.  
5. Rename the table `alter_table` to `employee_details`.  
6. Add a NOT NULL constraint to the `address` column.  
7. Drop the NOT NULL constraint from the `address` column (if added).  
8. Set the default value of the `status` column to 'pending' instead of 'active'.  
9. Remove the default value of the `status` column.  
10. Change the owner of the table `alter_table` to a user named `hr_manager`.  
11. Add a unique constraint to the `email` column.  
12. Drop the unique constraint from the `username` column.  
13. Add a check constraint to the `salary` column so that salary must be greater than 0.  
14. Drop the check constraint from the `salary` column.  
15. Change the data type of the `birthdate` column from DATE to TIMESTAMP.  
16. Add a foreign key constraint on a new column `manager_id` referencing `alter_table_id` within the same table.  
17. _(Intentionally left blank if skipped in sequence)_  
18. Modify the `last_modified` column so that it automatically updates to the current timestamp on every row update.  
19. Change the `description` column to allow NULL values if it does not already.  
20. Add a column `created_at` of type TIMESTAMP with default value as the current timestamp.  

---

💡 **Tip:** Try using combinations of these functions in a single query for advanced practice.

