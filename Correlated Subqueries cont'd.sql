SELECT department, first_name, salary 
FROM (
SELECT department, first_name, salary,
    (Select MAX(salary) FROM employees e2
	WHERE e1.department = e2.department) as max_by_department,
	(Select MIN(salary) FROM employees e2
	WHERE e1.department = e2.department) as min_by_department
FROM employees e1
ORDER BY department
	) a
WHERE salary = max_by_department
    OR salary = min_by_department

SELECT department, first_name, salary, 
CASE WHEN salary = max_by_department THEN 'HIGHEST SALARY'
     WHEN salary = min_by_department THEN 'LOWEST SALARY'
END as salary_in_department
FROM (
SELECT department, first_name, salary,
    (Select MAX(salary) FROM employees e2
	WHERE e1.department = e2.department) as max_by_department,
	(Select MIN(salary) FROM employees e2
	WHERE e1.department = e2.department) as min_by_department
FROM employees e1
	) a
WHERE salary = max_by_department
    OR salary = min_by_department
ORDER BY department