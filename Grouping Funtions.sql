SELECT UPPER(first_name), LOWER(last_name)
FROM employees

SELECT MAX(salary)
FROM employees
# Shows the highest salary

SELECT MIN(salary)
FROM employees
# Shows the lowest salary.

SELECT AVG(salary)
FROM employees
# Shows the average salary

SELECT ROUND(AVG(salary))
FROM employees
# Rounds the average salary to a whole number.

SELECT COUNT(employee_id)
FROM employees
# Counts the number of employees.

SELECT SUM(salary)
FROM employees
# Adds up the total salaries of all employees.

SELECT SUM(salary)
FROM employees
WHERE department = 'Clothing'
# Adds up total salary of the Clothing department.

