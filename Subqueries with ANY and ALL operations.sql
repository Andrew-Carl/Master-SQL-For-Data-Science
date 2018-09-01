SELECT * FROM regions

SELECT * FROM employees
WHERE region_id IN (SELECT region_id FROM regions WHERE country = 'United States')

SELECT * FROM employees
WHERE region_id IN > ALL (SELECT region_id FROM regions WHERE country = 'United States')

SELECT * FROM employees
WHERE region_id IN > ANY (SELECT region_id FROM regions WHERE country = 'United States')

SELECT *
FROM employees
WHERE department = ANY (SELECT department 
	                    FROM departments 
	                    WHERE division = 'Kids')
AND hire_date > ALL (SELECT hire_date
				    FROM employees
				    WHERE department = 'Maintenance')

SELECT salary, COUNT(*)
FROM employees
GROUP BY salary
ORDER BY COUNT(*) desc, salary desc
LIMIT 1

SELECT salary, COUNT(*)
FROM employees
GROUP BY salary
HAVING COUNT(*) >= ALL (SELECT COUNT(* FROM employees
						GROUP BY salary)
ORDER BY salary desc
LIMIT 1