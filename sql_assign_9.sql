 CREATE TABLE Employees (
   EmpID INT PRIMARY KEY,
   Name VARCHAR(50),
   DateOfBirth DATE,
   JoinDate DATE
 );
 INSERT INTO Employees (EmpID, Name, DateOfBirth, JoinDate) VALUES
   (1, 'Alice Johnson', '1985-05-20', '2010-06-15'),
   (2, 'Bob Smith', 	'1990-08-10', '2015-09-01'),
   (3, 'Charlie Brown', '1988-03-25', '2012-11-12'),
   (4, 'Diana Prince',  '1992-01-30', '2017-07-08'),
   (5, 'Eve Adams', 	'1987-12-05', '2013-03-20');

-- a) Current Date & Time: Display the current system date and time.
 SELECT CURRENT_TIMESTAMP;
 
 -- b) Calculate Age: Compute each employee’s age in years based on DateOfBirth.
SELECT Name, EXTRACT(YEAR FROM AGE(CURRENT_DATE, DateOfBirth)) AS Age
FROM Employees;

--  c) Calculate Experience: Compute total years of service since JoinDate.
SELECT Name, EXTRACT(YEAR FROM AGE (CURRENT_DATE ,JoinDate)) AS EXPERIENCE
FROM Employees;

--  d) Extract DOB Components: Extract year, month, and day from DateOfBirth.
SELECT Name,
EXTRACT(YEAR FROM DateOfBirth) AS BirthYear,
EXTRACT(MONTH FROM DateOfBirth) AS BirthMonth,
EXTRACT(DAY FROM DateOfBirth) AS BirthDay
FROM Employees;

--e) Born in August: List employees born in the month of August.
SELECT Name FROM Employees WHERE EXTRACT(MONTH FROM DateOfBirth) = 8;
--f) Upcoming Birthdays: Display names of employees whose birthdays fall in the next 30 days.
SELECT Name FROM Employees
WHERE DATE_FORMAT(DATE_ADD(DateOfBirth, INTERVAL YEAR(CURRENT_DATE)-YEAR(DateOfBirth) YEAR), '%m-%d')
BETWEEN DATE_FORMAT(CURRENT_DATE, '%m-%d') 
AND DATE_FORMAT(DATE_ADD(CURRENT_DATE, INTERVAL 30 DAY), '%m-%d');

