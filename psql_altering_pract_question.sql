CREATE TABLE alter_table (
    alter_table_id SERIAL PRIMARY KEY,
    fullname VARCHAR(100),
    age INTEGER,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address TEXT,
    status VARCHAR(20) DEFAULT 'active',
    salary NUMERIC(10,2),
    birthdate DATE,
    last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    description TEXT,
    username VARCHAR(50) UNIQUE
);

select * from alter_table;

--1.Change the data type of the age column from INTEGER to SMALLINT.
ALTER TABLE alter_table
ALTER COLUMN age
SET  DATA TYPE SMALLINT;

--2.Rename the column fullname to full_name.
ALTER TABLE alter_table
RENAME  fullname TO full_name;

--3.Add a new column email_verified of type BOOLEAN with a default value FALSE.
ALTER TABLE alter_table
ADD COLUMN email_verified BOOLEAN
 DEFAULT 'false';

--4.Drop the column phone_number.
ALTER TABLE alter_table
DROP COLUMN phone_number;

--5.Rename the table alter_table to employee_details.
RENAME TABLE alter_table TO employee_details;

--6.Add a NOT NULL constraint to the address column.
ALTER TABLE employee_details
ALTER COLUMN address
SET NOT NULL;

--7.Drop the NOT NULL constraint from the address column (if added).
ALTER TABLE employee_details
ALTER COLUMN address
DROP NOT NULL;

--8.Set the default value of the status column to 'pending' instead of 'active'.
ALTER TABLE employee_details
ALTER COLUMN status
SET DEFAULT 'pending';

--9.Remove the default value of the status column.
ALTER TABLE employee_details
ALTER COLUMN status
Drop DEFAULT;

--10.Change the owner of the table alter_table to a user named hr_manager.
ALTER TABLE alter_table
owner to hr_manager;

--11.Add a unique constraint to the email column.
ALTER TABLE employee_details
ADD CONSTRAINT UNIQUE_EMAIL  UNIQUE(email);



--12.Drop the unique constraint from the username column.
ALTER TABLE employee_details
DROP CONSTRAINT UNIQUE_EMAIL  UNIQUE(email);


--13.Add a check constraint to the salary column so that salary must be greater than 0.
ALTER TABLE employee_details
ADD CONSTRAINT LENGTH_GREATER_0 check (salary>0);


--14.Drop the check constraint from the salary column.
ALTER TABLE employee_details
DROP CONSTRAINT LENGTH_GREATER_0 ;

--15.Change the data type of the birthdate column from DATE to TIMESTAMP.
ALTER TABLE employee_details
ALTER COLUMN birthdate
SET DATA TYPE TIMESTAMP;

--16.Add a foreign key constraint on a new column manager_id referencing alter_table_id within the same table.
ALTER TABLE employee_details
ADD COLUMN manager_id INT;
ALTER TABLE employee_details
ADD CONSTRAINT manager FOREIGN KEY(manager_id) REFERENCES employee_detail(alter_table_id);

--18.Modify the last_modified column so that it automatically updates to the current timestamp on every row update.
ALTER TABLE employee_details
ALTER COLUMN last_modified
SET DATA TYPE TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
--19.Change the description column to allow NULL values if it does not already.
ALTER TABLE employee_details
ALTER COLUMN description
DROP NOT NULL;
--20.Add a column created_at of type TIMESTAMP with default value as the current timestamp.
ALTER TABLE employee_details
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

