SELECT first_name, department, hire_date, country
FROM employees e 
INNER JOIN regions regions r 
ON e.region_id = r.region_id
WHERE hire_date = (SELECT MIN(hire_date) FROM employees e2)

SELECT first_name, department, hire_date, country
FROM employees e 
INNER JOIN regions regions r 
ON e.region_id = r.region_id
WHERE hire_date = (SELECT MAX(hire_date) FROM employees e2

SELECT first_name, department, hire_date, country
FROM employees e 
INNER JOIN regions regions r 
ON e.region_id = r.region_id
WHERE hire_date = (SELECT MIN(hire_date) FROM employees e2)
UNION ALL
SELECT first_name, department, hire_date, country
FROM employees e 
INNER JOIN regions regions r 
ON e.region_id = r.region_id
WHERE hire_date = (SELECT MAX(hire_date) FROM employees e2

(SELECT first_name, department, hire_date, country
FROM employees e 
INNER JOIN regions regions r 
ON e.region_id = r.region_id
WHERE hire_date = (SELECT MIN(hire_date) FROM employees e2)
LIMIT 1)
UNION ALL
SELECT first_name, department, hire_date, country
FROM employees e 
INNER JOIN regions regions r 
ON e.region_id = r.region_id
WHERE hire_date = (SELECT MAX(hire_date) FROM employees e2

