--  case insensitive 
--  but we generally use uppercase for keywords and lowercase for tables, column names, etc.



USE store ;
SHOW tables;

SELECT * FROM customers;


SELECT * FROM employee ;

SELECT * FROM  customers order by  first_name DESC;

 
SELECT 1,2;

SELECT 1+2;

SELECT 100-50/2 AS Answer;

SELECT 100-50/2 AS 'answer value';

USE store;

SELECT first_name,last_name,points,points +10 FROM customers;
SELECT first_name,last_name,points  FROM customers;

SELECT first_name,last_name,points,points +10 AS 'new Points' FROM customers;


-- insert first_name from customers first_name = "kamalesh";


-- 07-02-2023


SELECT 171*214+625 AS answer;


USE exercise_hr;

SELECT FIRST_NAME AS 'First Name' , LAST_NAME AS 'Last Name' FROM employees;


SELECT FIRST_NAME,LAST_NAME,SALARY,SALARY * 15/100 AS  'PF'	 FROM employees;

SELECT DISTINCT DEPARTMENT_ID FROM employees;

USE store;

SELECT * FROM customers;

SELECT name,unit_price,1.1 * unit_price AS 'new price' FROM products;

-- Condition 

 
SELECT * FROM customers WHERE state = 'FL';

SELECT * FROM customers WHERE points > 3000;

SELECT * FROM customers WHERE birth_date >= '1990-01-01';

SELECT * FROM customers WHERE state != 'FL';

SELECT * FROM customers WHERE NOT ( state = 'FL');



SELECT * FROM customers WHERE points > 3000 AND birth_date >= '1990-01-01';

SELECT * FROM customers WHERE points > 3000 OR birth_date >= '1990-01-01';

SELECT * FROM customers WHERE birth_date > '1889-01-01' OR (points > '1000' AND state = 'VA');

SELECT * FROM customers WHERE (birth_date > '1989-01-01' AND points > '1000') OR state = 'VA';


SELECT * FROM customers WHERE state = 'VA' OR state= 'FL'  OR state = 'GA';


SELECT * FROM customers WHERE state IN ("FL","VA","GA");

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

SELECT * FROM customers;

SELECT * FROM customers WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';

SELECT * FROM customers WHERE points BETWEEN 3000 AND 10000;


SELECT * FROM customers WHERE address  LIKE '%Trail%' OR address LIKE '%Avenue%';

SELECT * FROM customers WHERE last_name LIKE '%y';

SELECT * FROM customers WHERE phone LIKE '%9';

SELECT * FROM customers WHERE phone NOT LIKE '%9';

SELECT * FROM customers WHERE first_name IN( 'Elka','Ambur');


SELECT * FROM customers WHERE last_name LIKE '%ey' OR last_name LIKE '%on';


SELECT * FROM customers WHERE last_name LIKE 'My%' OR last_name LIKE '%se';

SELECT * FROM customers WHERE last_name LIKE '%b%r%' OR last_name LIKE '%b%u%';

-- Regular Expression	

-- Write a query to display the first_name of all employees who have both "b" and "c" in their first name.

SELECT first_name FROM employees WHERE first_name LIKE '%B%' AND first_name LIKE '%c%';
 

-- Write a query to display the last name of employees whose names have exactly 6 characters.
SELECT * FROM  employees WHERE last_name LIKE '______';

-- last_names ending with y and having 5 leters
SELECT * FROM customers WHERE last_name LIKE '_____y';


-- last_names starting with b,ending with y and having 6 leters
SELECT * FROM customers WHERE last_name LIKE 'b%y' AND last_name LIKE '______';
SELECT * FROM customers WHERE last_name LIKE 'b____y';


SELECT * FROM customers WHERE last_name LIKE '%age%';
SELECT * FROM customers WHERE last_name REGEXP 'age';

-- last_name starts with a Mac

SELECT * FROM customers WHERE last_name REGEXP '^Mac';


-- last_name ends wiht field

SELECT * FROM customers WHERE last_name REGEXP 'field$';

-- last_name start with Mac or ends with field
SELECT * FROM customers WHERE last_name REGEXP '^Mac|field$' ; 


-- last_name contacins ae/be/ce/de/ee/fe/ge/he

SELECT * FROM customers WHERE last_name REGEXP 'ae|be|ce|de|ee|fe|ge|he';

SELECT * FROM customers WHERE last_name REGEXP '[a-h]e'; 
  






 


























