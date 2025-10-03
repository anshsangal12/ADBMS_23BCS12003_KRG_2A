CREATE TABLE employees ( emp_id 
SERIAL 
PRIMARY 
emp_name 
KEY, 
VARCHAR(100), 
gender VARCHAR(10) 
); -- Sample data 
INSERT INTO employees (emp_name, gender) VALUES 
('Amit', 'Male'), 
('Priya', 'Female'), 
('Ravi', 'Male'), 
('Sneha', 'Female'), 
('Karan', 'Male'); 
select * from EMPLOYEES; ----CREATING 
A PROCEDURE---- 
CREATE OR REPLACE PROCEDURE 
count_employees_by_gender( IN input_gender VARCHAR, OUT total_count int 
) 
LANGUAGE plpgsql 
AS $$ 
BEGIN 
SELECT COUNT(*) INTO total_count 
FROM employees 
WHERE gender = input_gender; 
END; 
$$; ---CALLING THE PROCEDURE----DO 
$$ DECLA 
RE 
result INT; 
BEGIN 
CALL count_employees_by_gender('Male', result); 
RAISE NOTICE 'TOTAL EMPLOYEES OF GENDER Male ARE %', result; 
END; 
$$; 
