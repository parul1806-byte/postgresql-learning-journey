--14.Get all employees with salary > 50000.
SELECT * FROM employees 
WHERE salary > 5000;
--15.Find employees hired after Find employees hired after '2024-01-01'..
SELECT * FROM employees
WHERE hire_date > '2024-01-01';
--16.Get employees whose f_name starts with 'A'.
SELECT * FROM employees
WHERE f_name LIKE 'A%';

--17.Get employees whose email contains 'gmail'.
SELECT * FROM employees
WHERE email LIKE '%gmail%';

--18.Find distinct dept_id values from the employees table.
SELECT DISTINCT dept_id FROM employees;

--19.Get the top 3 highest paid employees.
SELECT f_name,salary FROM employees LIMIT 3;
--20.Show employees ordered by hire_date DESC.
SELECT * FROM employees ORDER BY hire_date DESC;
--21.Show employees who are not in department 2.
SELECT * FROM employees
WHERE dept_id NOT IN (2);
--22.Get employees whose l_name ends with 'son'.
SELECT * FROM employees
WHERE l_name LIKE '%son';
-- Aggregation (SUM, COUNT, AVG, MAX, MIN, GROUP BY)
--23.Count total number of employees.
SELECT COUNT(emp_id) as total_employees FROM employees;
--24.Count how many employees are in each department (GROUP BY dept_id).
SELECT COUNT(f_name) FROM employees
GROUP BY dept_id;
--25.Get average salary of all employees.
SELECT AVG(salary) FROM employees;
--26.Get maximum and minimum salary from employees.
SELECT MAX(salary),MIN(salary) FROM employees;
--27.Show total salary paid per department.
SELECT dept_id, SUM(salary) FROM employees
GROUP BY dept_id
ORDER BY dept_id;
--28.Count number of employees hired in the year 2025.
SELECT COUNT(emp_id) FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 2025;
--29.Show the department with the highest total salary (use GROUP BY, ORDER BY, and LIMIT 1).
SELECT dept_id,SUM(salary) AS net_salary FROM employees
GROUP BY dept_id
ORDER BY net_salary DESC
LIMIT 1;
--30.Show departments that have more than 3 employees (use GROUP BY and HAVING).
SELECT dept_id,COUNT(f_name) FROM employees
GROUP BY dept_id
HAVING COUNT(f_name) > 3;














