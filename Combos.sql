SELECT first_name, email
FROM employees
WHERE gender = 'F'
AND department = 'Tools'
AND salary > 110000

SELECT first_name, hire_date
FROM employees
WHERE salary > 165000
OR (department = 'Sports'
AND gender = 'M')

SELECT first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '2002-01-01' AND '2004-01-01'

SELECT * 
FROM employees
WHERE gender = 'M'
AND department = 'Automotive'
AND salary BETWEEN 40000 AND 100000
OR (gender = 'F' 
AND department = 'Toys') 