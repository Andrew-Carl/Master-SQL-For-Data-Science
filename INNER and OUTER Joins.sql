SELECT first_name, country
FROM employees INNER JOIN regions
ON employees.region_id = regions.region_id

SELECT first_name, email, division
FROM employees INNER JOIN departments
ON employees.department = departments.department
WHERE email IS NOT NULL
# Joining 2 tables

SELECT first_name, email, division, country
FROM employees INNER JOIN departments
ON employees.department = departments.department
INNER JOIN regions
ON employees.region_id = regions.region_id
WHERE email IS NOT NULL
# Joining 3 tables

SELECT DISTINCT department FROM employees
-- 27 departments

SELECT DISTINCT depatment FROM departments
-- 24 departments

SELECT DISTINCT employees.department, departments.department
FROM employees LEFT JOIN departments ON employees.department = department.departments
# Gives preference to columns on the left

SELECT DISTINCT employees.department, departments.department
FROM employees RIGHT JOIN departments ON employees.department = department.departments
# Gives preference to columns on the right

SELECT DISTINCT employees.department employees_department, 
         departments.department departments_department
FROM employees RIGHT JOIN departments ON employees.department = department.departments

SELECT DISTINCT employees.department employees_department, 
         departments.department departments_department
FROM employees LEFT JOIN departments ON employees.department = department.departments
WHERE departments.department IS NULL
# Displays departments with null values

SELECT DISTINCT employees.department, departments.department
FROM employees FULL OUTER JOIN departments ON employees.department = department.departments
# Exposes both sides of the scenario 