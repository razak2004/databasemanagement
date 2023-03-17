USE exercise_hr;
USE exercise_hr;
USE exercise_hr;
-- Write a query to get all employee details from the employee table order by first name, descending.

SELECT * FROM employees order by first_name DESC; 

-- Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary.

SELECT EMPLOYEE_ID,FIRST_NAME, LAST_NAME,SALARY FROM employees;


USE exercise_hr;

-- Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987.
SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date BETWEEN '1987-01-01' AND '1987-12-30';



-- Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000.
SELECT first_name,last_name,salary 
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;



-- Write a query to display the name (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending order.
SELECT first_name,last_name,department_id 
FROM employees
WHERE department_id = 30 OR department_id = 100 
ORDER BY department_id ASC;



-- Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.
SELECT first_name,last_name,salary 
FROM employees
WHERE (salary NOT BETWEEN 10000 AND 15000) AND (department_id = 30 OR department_id = 100);


-- Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.
SELECT *
FROM employees
WHERE last_name IN ('BLAKE', 'SCOTT', 'KING','FORD');

SELECT * FROM products;

SELECT * FROM products WHERE quantity_in_stock IN (49,38,72);


SELECT * FROM products WHERE quantity_in_stock NOT IN (72);


 






