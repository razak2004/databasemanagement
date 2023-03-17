USE exercise_hr;

SELECT first_name,last_name,department_id,CONCAT(first_name, ' ',last_name) AS "Name"
FROM employees;

-- Write a query to display job title, employee name, and the difference between salary 
-- of the employee and minimum salary for the job

SELECT job_title AS "Job Title",CONCAT(first_name, ' ',last_name) AS "Name", (e.SALARY - j.min_salary) AS "Salary Difference"
FROM employees AS e 
INNER JOIN jobs AS j 
ON e.job_id = j.job_id;

-- Write a query to find the employee ID, job title, number of days between ending 
-- date and starting date for all jobs in department 90


SELECT e.EMPLOYEE_ID AS "Employee Id",job_title AS "Job Title", h.end_date-h.start_date AS "No of Days"
FROM employees AS e 
INNER JOIN jobs AS j  
ON e.job_id = j.job_id
INNER JOIN job_history AS h
ON e.job_id = h.job_id
WHERE h.DEPARTMENT_ID = 90;

-- Write a query to get the department name and average salary in the department.

SELECT department_name AS "Department Name",AVG(salary) AS "Average Salary"
FROM employees AS e 
INNER JOIN departments AS d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY department_name
ORDER BY DEPARTMENT_NAME;

-- Write a query to display the department name, manager name, and city. 

SELECT department_name AS "Department Name",first_name AS "Manager Name",city AS "Days" 
FROM employees AS e 
INNER JOIN departments AS d
ON e.EMPLOYEE_ID = d.MANAGER_ID
INNER JOIN locations AS l
ON d.LOCATION_ID = l.LOCATION_ID
ORDER BY  DEPARTMENT_NAME;