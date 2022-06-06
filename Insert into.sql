SELECT 
    *
FROM
    titles
LIMIT 10;

INSERT INTO employees
VALUES
(
    999903,
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;

insert into titles (emp_no, title, from_date)
values (999903, 'Senior Engineer', '1997-10-01');

SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC
LIMIT 10;

insert into dept_emp(emp_no, dept_no, from_date, to_date)
values(999903, 'd005', '1997-10-01', '9999-01-01');

SELECT 
    *
FROM
    dept_emp
ORDER BY emp_no DESC
LIMIT 10;

CREATE TABLE dept_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(48) NOT NULL
);

insert into dept_dup(dept_no, dept_name)
select * from departments;

select * from departments;
INSERT INTO departments VALUES ('d010', 'Business Analysis');

SELECT 
    *
FROM
    employees
LIMIT 10;


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



