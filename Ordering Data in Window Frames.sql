SELECT first_name, hire_date, salary, 
SUM(salary) OVER(ORDER BY hire_date RANGE BETWEEN UNBOUNDED PRECEDING 
				 AND CURRENT ROW) as running_total_of_salaries
FROM employees
# Returns First name, hiredate in order, Salary of employees, 
# and a running total that sums all the salaries precending the current row.

SELECT first_name, hire_date, salary, department, salary, 
SUM(salary) OVER(PARTITION BY department 
				 ORDER BY hire_date) as running_total_of_salaries
FROM employees

SELECT first_name, hire_date, salary, department, salary, 
SUM(salary) OVER(ORDER BY hire_date ROWS BETWEEN 1 PRECEDING
				 AND CURRENT ROW)
FROM employees
# returns first name, Hired date in order, department of employee
# salary of employee, and the sum of the employee and the employee
# directly precending them on the chart. 

