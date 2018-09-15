SELECT first_name, country
FROM employees, regions
WHERE employees.region_id = regions.region_id
# Joining data. 

SELECT first_name, email, division
FROM employees, departments
WHERE employees.department = departments.department
# Joins tables and diplays First name, email and division.

SELECT first_name, email, division
FROM employees, departments
WHERE employees.department = departments.department
AND email IS NOT NULL
# Does same as above but removes rows with NULL values in the email column.

SELECT first_name, email, division, country
FROM employees, departments, regions
WHERE employees.department = departments.department
AND employees.region_id = regions.region_id
AND email IS NOT NULL
# Joins 3 tables. Displays First name, email, division and country.

SELECT first_name, email, employees.department, division, country
FROM employees, departments, regions
WHERE employees.department = departments.department
AND employees.region_id = regions.region_id
AND email IS NOT NULL
# Returns same as above with department column added. 

SELECT first_name, email, e.department, division, country
FROM employees e, departments d, regions r
WHERE e.department = d.department
AND e.region_id = r.region_id
AND email IS NOT NULL
# Add aliases for employees, departments, and regions tables.

SELECT country, COUNT(employee_id)
FROM employees e, regions r 
WHERE r.region_id = e.region_id
GROUP BY country
# Displays country and number of employees in each country.

SELECT country, COUNT(employee_id)
FROM employees e, (SELECT * FROM regions) r
WHERE r.region_id = e.region_id
GROUP BY country
# Returns the same thing above. Just uses a subquery. 
