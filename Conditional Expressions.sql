SELECT first_name, salary,
CASE
	WHEN salary < 100000 THEN 'UNDER PAID'
	WHEN salary > 100000 THEN 'PAID WELL'
END
FROM employees
ORDER BY salary DESC

SELECT first_name, salary,
CASE
	WHEN salary < 100000 THEN 'UNDER PAID'
	WHEN salary > 100000 THEN 'PAID WELL'
	ELSE 'UNPAID'
END
FROM employees
ORDER BY salary DESC

SELECT first_name, salary,
CASE
	WHEN salary < 100000 THEN 'UNDER PAID'
	WHEN salary > 100000 AND salary < 160000 THEN 'PAID WELL'
	ELSE 'EXECUTIVE'
END
FROM employees
ORDER BY salary DESC

SELECT first_name, salary,
CASE
	WHEN salary < 100000 THEN 'UNDER PAID'
	WHEN salary > 100000 AND salary < 160000 THEN 'PAID WELL'
	WHEN salary > 160000 THEN 'EXECUTIVE'
	ELSE 'UNPAID'
END
FROM employees
ORDER BY salary DESC

SELECT first_name, salary,
CASE
	WHEN salary < 100000 THEN 'UNDER PAID'
	WHEN salary > 100000 AND salary < 160000 THEN 'PAID WELL'
	WHEN salary > 160000 THEN 'EXECUTIVE'
	ELSE 'UNPAID'
END as category
FROM employees
ORDER BY salary DESC

SELECT * FROM (
SELECT first_name, salary,
CASE
	WHEN salary < 100000 THEN 'UNDER PAID'
	WHEN salary > 100000 AND salary < 160000 THEN 'PAID WELL'
	WHEN salary > 160000 THEN 'EXECUTIVE'
	ELSE 'UNPAID'
END as category
FROM employees
ORDER BY salary DESC
	) a 
GROUP BY a.category

SELECT * FROM (
SELECT first_name, salary,
CASE
	WHEN salary < 100000 THEN 0
	WHEN salary > 100000 AND salary < 160000 THEN 1
	WHEN salary > 160000 THEN 2
	ELSE '9999999'
END as category
FROM employees
ORDER BY salary DESC
	) a 
GROUP BY a.category

SELECT * FROM (
SELECT first_name, salary,
CASE
	WHEN salary < 100000 THEN 'UNDER PAID'
	WHEN salary > 100000 AND salary < 160000 THEN 'PAID WELL'
	WHEN salary > 160000 THEN 'EXECUTIVE'
	ELSE 'UNPAID'
END as category
FROM employees
ORDER BY salary DESC
	) a 
GROUP BY a.category

SELECT SUM( CASE WHEN salary < 100000 THEN 1 ESLE 0 END) as under_paid,
SUM( CASE WHEN salary > 100000 AND salary < 150000 THEN 1 ESLE 0 END) as paid_well,
SUM( CASE WHEN salary > 150000 THEN 1 ESLE 0 END) as executive,
FROM employees





