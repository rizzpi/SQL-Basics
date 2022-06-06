
/*
INSERT INTO employees
(
	emp_no,
	birth_date,
	first_name,
	last_name,
	gender,
	hire_date
) VALUES 
(
	999901,
    '1986-04-21',
    'John',
    'Smith',
    'M',
    '2011-01-01'
);
*/

USE employees;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999901;

UPDATE employees 
SET 
    first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
    emp_no = 999901;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999901;

    
UPDATE employees 
SET 
    first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
    emp_no = 999909;

SELECT 
    *
FROM
    employees
WHERE
    emp_no in (999901, 999909);
    

SELECT 
    *
FROM
    dept_dup
ORDER BY dept_no;

COMMIT;

UPDATE dept_dup 
SET 
    dept_no = 'd011',
    dept_name = 'Quality Control';
rollback;

SELECT 
    *
FROM
    dept_dup
ORDER BY dept_no;

commit;

SELECT 
    *
FROM
    departments;
UPDATE departments 
SET 
    dept_name = 'Data Analysis'
WHERE
    dept_no = 'd010';
commit;
SELECT 
    *
FROM
    departments;

