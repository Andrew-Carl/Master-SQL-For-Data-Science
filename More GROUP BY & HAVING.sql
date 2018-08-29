SELECT first_name, COUNT(*)
FROM employees
GROUP BY first_name
HAVING COUNT(*) > 1

SELECT department, COUNT(*)
FROM employees
GROUP BY department

SELECT SUBSTRING(email, position('@' IN email))
FROM employees

SELECT SUBSTRING(email, position('@' IN email)+1)as email_domain COUNT(*)
FROM employees

SELECT SUBSTRING(email, position('@' IN email)+1)as email_domain COUNT(*)
FROM employees
WHERE email IS NOT NULL
GROUP BY SUBSTRING(email, position('@' IN email)+1)
ORDER BY COUNT(*) DESC

SELECT gender, region_id, MIN(salary), round(AVG(salary))
FROM employees
GROUP BY gender, regino_id

SELECT gender, region_id, MIN(salary), round(AVG(salary))
FROM employees
GROUP BY gender, regino_id
ORDER BY gender, region_id

SELECT gender, region_id, MIN(salary), round(AVG(salary))
FROM employees
GROUP BY gender, regino_id
ORDER BY gender ASC, region_id DESC

