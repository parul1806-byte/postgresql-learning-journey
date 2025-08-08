--1.Show the full name (f_name + l_name) of all employees in a single column.
SELECT CONCAT(f_name,l_name) as full_name
 FROM employees;

--2.Show the full name with a space in between using CONCAT_WS.
SELECT CONCAT_WS(' ',f_name,l_name)
 FROM employees;

--3.Display only the first 3 letters of each employee’s first name.
SELECT SUBSTR(f_name,1,3)
 FROM employees;

--4.Display only the last 2 letters of each employee's last name.
SELECT RIGHT(f_name,2)
 FROM employees;

--5.Show the length of each employee’s full name (first + last).
SELECT LENGTH(CONCAT(f_name,l_name))
 FROM employees;

--6.Show all employees' first names in uppercase.
SELECT UPPER(f_name) 
FROM employees;

--7.Show all employees' last names in lowercase.
SELECT LOWER(l_name) 
FROM employees;

--8.Remove extra spaces from the start and end of department names using TRIM.
SELECT TRIM(dept_name) 
from departments;

--9.Remove spaces from the left side of department names.
SELECT LTRIM(dept_name)
FROM departments;

--10.Remove spaces from the right side of department names .
SELECT RTRIM(dept_name)
FROM departments;

--11.Replace the domain "email.com" in email addresses with "company.com".
SELECT REPLACE(email,'email.com','company.com')
from employees;

--12.Find the position of the letter 'a' in each employee's first name.
SELECT POSITION('a' IN f_name) 
FROM employees;

--13.Show only employees whose first name contains 'a' in the second position.
SELECT f_name 
FROM employees
WHERE f_name LIKE '_a%';

--14.Extract the first name’s first letter and last name’s first letter, and join them as initials.
SELECT CONCAT_WS(' ',SUBSTR(f_name,1,1),SUBSTR(l_name,1,1))
FROM employees;

--15.Display emails in the format: FIRSTNAME_LASTNAME@company.com.
SELECT CONCAT_WS('_',UPPER(f_name),UPPER(l_name)) || '@company.com' AS email
FROM employees;

--16.Show the last 4 characters of each email address.
SELECT RIGHT(email,4)
 FROM employees;

--17.Show the first 5 characters of each employee's email.
SELECT LEFT(email,5)
FROM employees;

--18.Find all employees whose email contains "verma".
SELECT f_name FROM employees
WHERE email
LIKE '%verma%';

--19.Find all employees whose last name starts with "S".
SELECT f_name FROM employees
WHERE l_name
LIKE 'S%';

--20.Find all employees whose first name ends with "t".
SELECT f_name FROM employees
WHERE f_name
LIKE '%t';
--21.Count how many employees have 'a' in their first name.
SELECT COUNT(f_name) FROM employees
WHERE f_name
LIKE '%a%';
--22.Count employees whose last name is more than 5 characters long.

--23.Find the employee with the longest first name.

--24.Find the employee with the shortest last name.

--25.Display department names in uppercase with their lengths.

--26.Show all employees with their names reversed (use REVERSE if supported, else SUBSTR tricks).

--27.Replace the first letter of each first name with 'X'.

--28.Show all employees whose first name length is even.

--29.Show department names without the letter 'e'.

--30.Show employees whose email username (before @) is shorter than 8 characters.

