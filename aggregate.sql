SELECT 
    COUNT(DISTINCT dept_no) AS total_dept
FROM
    dept_emp;

SELECT 
    *
FROM
    salaries
ORDER BY from_date DESC;

SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';


SELECT 
    MAX(salary)
FROM
    salaries;

SELECT 
    MIN(salary)
FROM
    salaries;

SELECT 
    MIN(emp_no)
FROM
    employees;

SELECT 
    MAX(emp_no)
FROM
    employees;


SELECT 
    AVG(salary)
FROM
    salaries;

SELECT 
    AVG(salary)
FROM
    salaries
WHERE
    from_date >= '1997-01-01';

SELECT 
    ROUND(AVG(salary), 2)
FROM
    salaries
WHERE
    from_date >= '1997-01-01';

ALTER TABLE dept_dup
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL; 
INSERT INTO dept_dup(dept_no) VALUES ('d010'), ('d011');

SELECT 
    *
FROM
    dept_dup order by dept_no asc;

ALTER TABLE employees.dept_dup
ADD COLUMN dept_manager VARCHAR(255) NULL AFTER dept_name;

commit;


