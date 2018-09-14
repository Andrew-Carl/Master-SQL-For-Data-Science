SELECT 
first_name,
salary
FROM employees
WHERE salary > (SELECT ROUND(AVG(salary)) FROM employees)

SELECT 
first_name, salary
FROM employees el
WHERE salary > (SELECT ROUND(AVG(salary)) 
				FROM employees e2 WHERE e1.department = e2.department)

SELECT 
first_name, salary
FROM employees e1
WHERE salary > (SELECT ROUND(AVG(salary)) 
				FROM employees e2 WHERE e1.region_id = e2.region_id)

SELECT first_name, salary, department,
(SELECT ROUND(AVG(salary)) 
				FROM employees e2 WHERE e1.region_id = e2.region_id)
FROM employees e1

SELECT department
FROM departments
WHERE 38< (SELECT COUNT(*)
		   FROM employees e
		   WHERE e.department = departments.department)

SELECT department
FROM employees e1
WHERE 38 < (SELECT COUNT(*)
		   FROM employees e2
		   WHERE e1.department = e2.department)
GROUP BY department
# Shows departments with more than 38 employees

SELECT department, (SELECT MAX(salary) FROM employees WHERE department = d.department)
FROM departments d
WHERE 38 < (SELECT COUNT(*)
		   FROM employees e2
		   WHERE d.department = e2.department)
		   # Shows the highest salary per department.