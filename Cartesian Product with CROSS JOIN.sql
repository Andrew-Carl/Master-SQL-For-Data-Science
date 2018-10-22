SELECT COUNT(*) FROM (
SELECT * 
FROM employees, departments
	) a

SELECT COUNT(*) FROM (
SELECT *
FROM employees a, employees b
	) sub

SELECT COUNT(*) FROM (
SELECT *
FROM employees a, employees b, departments
	) sub

SELECT COUNT(*) FROM (
SELECT *
FROM employees a CROSS JOIN departments b
	) sub