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

SELECT first_name, hire_date, hire_date - 90
FROM employees

SELECT first_name, hire_date, hire_date + 90
FROM employees
WHERE hire_date BETWEEN hire_date AND hire_date - 90

SELECT hire_date, salary,
(SELECT SUM(salary) FROM employees e2
WHERE e2.hire_date BETWEEN e.hire_date - 90 AND e.hire_date) as spending pattern
FROM employees e
ORDER BY hire_date
# Returns Hire date, salary and spending pattern.

