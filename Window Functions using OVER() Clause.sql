SELECT first_name, department,
(SELECT COUNT(*) FROM employees e2 WHERE e2.department = e1.department)
 FROM employees e1
 ORDER BY department


SELECT first_name, department,
COUNT(*) OVER()
FROM employees e2
GROUP BY department, first_name

SELECT first_name, department,
COUNT(*) OVER(PARTITION BY department)
FROM employees e2
GROUP BY department, first_name
# Returns first name of employee, 
# department he/she works in and the count of employees in that department.

(SELECT first_name, department,
(SELECT COUNT(*) FROM employees e2 WHERE e2.department = e1.department)
FROM employees e1
ORDER BY department)
EXCEPT
SELECT first_name, department,
COUNT(*) OVER(PARTITION BY department)
FROM employees e2
# There is no difference between top queary and bottom queary.
# Returns nothing.

SELECT first_name, department,
SUM(salary) OVER(PARTITION BY department)
FROM employees e2
# Returns first name of employee, their department 
# and the sum of the salaries of their respective department.

SELECT first_name, department,
COUNT(*) OVER(PARTITION BY department) dept_count,
COUNT(*) OVER(PARTITION BY region_id) region_count
FROM employees e2
# Returns first name, department, Count of employees in their department
# and the count of regions people work in for their respective departments.


SELECT first_name, department, COUNT(*) OVER()
FROM employees
WHERE region_id = 3

SELECT first_name, department, COUNT(*) OVER(PARTITION BY department)
FROM employees
WHERE region_id = 3




