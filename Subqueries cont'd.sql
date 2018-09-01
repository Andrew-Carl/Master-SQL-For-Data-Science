SELECT *
FROM employees
WHERE department IN (SELECT department FROM departments)

SELECT *
FROM (SELECT department FROM departments) a

SELECT first_name, last_name, salary, (SELECT first_name FROM employees LIMIT 1)
FROM employees

SELECT * FROM departments
WHERE department IN (SELECT department FROM departments WHERE division + 'Electronics')

SELECT * FROM employees
WHERE salary > 130000
AND region_id IN (SELECT region_id FROM regions 
	              WHERE country = 'Asia' OR country = 'Canada')

SELECT * FROM employees
WHERE salary > 130000
AND region_id IN (SELECT region_id FROM regions 
	              WHERE country IN( 'Asia', 'Canada')

SELECT * first_name, department,
(SELECT MAX(salarY) FROM employees) - salary
FROM employees
WHERE region_id IN (SELECT region_id FROM regions
                   WHERE country IN ('Asia', 'Canada'))