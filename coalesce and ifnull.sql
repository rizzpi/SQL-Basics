SELECT 
    dept_no,
    IFNULL(dept_name, 
           'Department name not provided') AS dept_name
FROM
    dept_dup;

SELECT 
    dept_no,
    coalesce(dept_name, 
           'Department name not provided') AS dept_name
FROM
    dept_dup;
  
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
    dept_dup
ORDER BY dept_no ASC; 


SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
    dept_dup
ORDER BY dept_no ASC; 

SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    dept_dup
ORDER BY dept_no ASC;

SELECT 
    IFNULL(dept_no, 'N/A') AS dept_no,
    IFNULL(dept_name, 'Depart name not provided') AS dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    dept_dup
ORDER BY dept_no ASC;
  