/*intro to joins*/

ALTER TABLE dept_dup

DROP COLUMN dept_manager;

ALTER TABLE dept_dup

CHANGE COLUMN dept_no dept_no CHAR(4) NULL;

ALTER TABLE dept_dup
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

select * from dept_dup order by dept_no asc;

DROP TABLE IF EXISTS dept_manager_dup;
rollback;

CREATE TABLE dept_manager_dup (

  emp_no int(11) NOT NULL,

  dept_no char(4) NULL,

  from_date date NOT NULL,

  to_date date NULL

  );
INSERT INTO dept_manager_dup

select * from dept_manager_dup;

select * from dept_manager_dup;

INSERT INTO dept_manager_dup (emp_no, from_date)

VALUES                (999904, '2017-01-01'),(999905, '2017-01-01'),(999906, '2017-01-01'),

                               (999907, '2017-01-01');

DELETE FROM dept_manager_dup 
WHERE
    dept_no = 'd001';
    
INSERT INTO dept_dup (dept_name)

VALUES                ('Public Relations');

DELETE FROM dept_dup 
WHERE
    dept_no = 'd002'; 

ALTER TABLE dept_dup RENAME TO departments_dup; 


/* INNER JOINS */

SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no;

-- departments_dup
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

SELECT 
    departments_dup.dept_no, dept_manager_dup.dept_no
FROM
    departments_dup
        JOIN
    dept_manager_dup ON departments_dup.dept_no = dept_manager_dup.dept_no;
    
SELECT 
    a.dept_no, b.dept_no
FROM
    departments_dup a
        JOIN
    dept_manager_dup b ON a.dept_no = b.dept_no;

-- LECTURE: INNER JOIN - Part II

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

SELECT 
    m.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
FROM
    dept_manager m
        INNER JOIN
    employees e ON m.emp_no = e.emp_no
ORDER BY m.emp_no ASC;

SELECT 
    e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
ORDER BY dm.emp_no ASC;

-- LECTURE: A Note on Using Joins
-- add m.to_date and d.dept_name
SELECT 
    m.dept_no, m.emp_no, m.from_date, m.to_date, d.dept_name
FROM
    dept_manager_dup m
		INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

-- LECTURE: Duplicate Records

-- duplicate records
INSERT INTO dept_manager_dup 
VALUES 	('110228', 'd003', '1992-03-21', '9999-01-01');
        
INSERT INTO departments_dup 
VALUES	('d009', 'Customer Service');

-- dept_manager_dup
SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no ASC;

-- departments_dup
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;

-- inner join
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY dept_no;

-- add GROUP BY m.emp_no
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY dept_no;

-- remove the duplicates from the two tables
DELETE FROM dept_manager_dup 
WHERE emp_no = '110228';
DELETE FROM departments_dup 
WHERE dept_no = 'd009';

-- add back the initial records
INSERT INTO dept_manager_dup 
VALUES 	('110228', 'd003', '1992-03-21', '9999-01-01');
        
INSERT INTO departments_dup 
VALUES	('d009', 'Customer Service');




