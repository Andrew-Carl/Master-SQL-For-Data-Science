SELECT * 
FROM employees
WHERE 1=1;
# returns the same as SELECT *

SELECT * 
FROM employees
WHERE department = 'Clothing';

SELECT * 
FROM employees
WHERE department = 'Clothing'
AND salary > 90000;

SELECT * 
FROM employees
WHERE department = 'Clothing'
AND salary > 90000
AND region_id = 2;

SELECT * 
FROM employees
WHERE department = 'Clothing'
OR salary > 90000

SELECT * 
FROM employees
WHERE salary < 40000

SELECT * 
FROM employees
WHERE salary < 40000
AND (department = 'Clothing'
OR department = 'Pharmacy')

SELECT * 
FROM employees
WHERE department = 'Sports' 
OR department = 'Tools'