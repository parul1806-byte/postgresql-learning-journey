SELECT * FROM employee;
--store procedure
CREATE OR REPLACE PROCEDURE update_emp_salary(
p_emp_id INT,
p_salary NUMERIC)
LANGUAGE plpgsql
AS $$
BEGIN
UPDATE employee
SET salary = p_salary
where emp_id = p_emp_id;
END;
$$;

-- to call the store procedure 
CALL update_emp_salary(3,80000);
-- to drop a procedure
DROP PROCEDURE update_emp_salary;