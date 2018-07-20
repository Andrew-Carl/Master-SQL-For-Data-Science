SELECT * FROM employees;

SELECT employee_id, first_name 
FROM employees;

SELECT * 
FROM employees
WHERE department = 'Sports';

SELECT * 
FROM employees
WHERE department = 'Furniture';

SELECT * 
FROM employees
WHERE department LIKE '%nitu%'

SELECT * 
FROM employees
WHERE department LIKE 'F%nitu%'

SELECT * 
FROM employees
WHERE salary > 100000

SELECT * 
FROM employees
WHERE salary = 100000

SELECT * 
FROM employees
WHERE salary < 100000