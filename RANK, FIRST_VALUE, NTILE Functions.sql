SELECT first_name, email, department, salary,
RANK() OVER(PARTITION by department ORDER BY salary DESC)
FROM employees
# Returns first name, email, departments in order and 
# the rank of the employees salaries from highest to lowest.

SELECT * FROM(
SELECT first_name, email, department, salary,
RANK() OVER(PARTITION by department ORDER BY salary DESC)
FROM employees
	) a
WHERE RANK = 8
# Returns all employees in the 8th salary rank for each department.

SELECT first_name, email, department, salary,
NTILE(5) OVER(PARTITION by department ORDER BY salary DESC) salary_bracket
FROM employees
# Divides each department into 5 groups based on salary ranks. 

SELECT first_name, email, department, salary,
FIRST_VALUE(salary) OVER(PARTITION by department ORDER BY salary DESC) fv
FROM employees
# Creates a column that shows the highest salary for a department
# next to all other salaries.

SELECT first_name, email, department, salary,
NTH_VALUE(salary, 5) OVER(PARTITION by department ORDER BY salary DESC) nthv
FROM employees
# Does the same as above except for th 5th highest salary instead of the
# highest salary. 

