USE employees;

COMMIT;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;
    
SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;
    
DELETE FROM employees 
WHERE
    emp_no = 999903;


SELECT 
    *
FROM
    dept_dup
ORDER BY dept_no;

DELETE FROM dept_dup;
rollback;

DELETE from departments
where dept_no = 'd010';
 
 select * from departments order by dept_no desc;
 


