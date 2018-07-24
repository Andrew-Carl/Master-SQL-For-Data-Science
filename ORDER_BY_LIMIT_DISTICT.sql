SELECT *
FROM employees
ORDER BY employee_id desc

SELECT DISTINCT department
FROM employees
# shows all departments without repeating any.

SELECT DISTINCT department
FROM employees
ORDER BY 1
LIMIT 10
# Orders departments alphabetically and shows the top 10.

SELECT DISTINCT department
FROM employees
ORDER BY 1
FETCH FIRST 10 ROWS ONLY
# Does the same as above. 

SELECT DISTINCT department as sorted_departments
FROM employees
ORDER BY 1
FETCH FIRST 10 ROWS ONLY
# Renames department column name to sorted_departments

SELECT first_name, last_name, department, salary as "Yearly Salary"
FROM employees
# Renames just the salary column. 