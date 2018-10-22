SELECT DISTINCT department 
FROM employees
UNION
SELECT department
FROM departments
# Shows all departments in both employees and department tables.

SELECT DISTINCT department 
FROM employees
UNION ALL
SELECT department
FROM departments

SELECT DISTINCT department, first_name
FROM employees
UNION ALL
SELECT department, division
FROM departments

SELECT DISTINCT department, first_name
FROM employees
UNION ALL
SELECT department, division
FROM departments
ORDER BY departments

SELECT DISTINCT department, first_name
FROM employees
UNION ALL
SELECT department, division
FROM departments
UNION
SELECT country
FROM regions
ORDER BY departments

SELECT DISTINCT department
FROM employees
EXCEPT 
SELECT department
FROM departments
# Shows all departments in employees tabe that aren't in departments.

SELECT department, COUNT(*)
FROM employees
GROUP BY department
UNION ALL
SELECT 'TOTAL', COUNT(*)
FROM employees





