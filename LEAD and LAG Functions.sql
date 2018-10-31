SELECT first_name, last_name, salary,
LEAD(salary) OVER() next_salary
FROM employees
# Creates a new column with the salary of the employee in the next row.

SELECT first_name, last_name, salary,
LAG(salary) OVER() next_salary
FROM employees
# Does the exact opposite of the above command.

SELECT department, last_name, salary,
LAG(salary) OVER (ORDER BY salary DESC) next_higher_salary
FROM employees
# Orders table by salary and creates a new column which 
#shows the next highest salary.

SELECT department, last_name, salary,
LEAD(salary) OVER (ORDER BY salary DESC) next_lower_salary
FROM employees
# Does the same as the above command but for the next lower salary.

SELECT department, last_name, salary,
LEAD(salary) OVER (PARTITION BY department ORDER BY salary DESC) next_lower_salary
FROM employees
# Does the same as above command but partions table by department.