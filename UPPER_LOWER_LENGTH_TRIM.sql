SELECT UPPER(first_name)
FROM employees
# Puts employee first names in upper case.

SELECT UPPER(first_name), LOWER(department)
FROM employees
# Puts employee first names in upper case amd department name in lower case.

SELECT LENGTH(first_name)
FROM employees
# Shows the lenght of all names.

SELECT TRIM('   HELLO THERE   ')
# Deletes blank spaces before and after HELLO THERE

SELECT first_name || last_name
FROM employees
# Concats first and last name columns together.

SELECT first_name ||' '|| last_name
FROM employees
# Does the same as above and spaces the two names apart. 

SELECT first_name ||' '|| last_name full_name
FROM employees
# Does the same as above and changes new column name to full_name

SELECT first_name ||' '|| last_name full_name, (salary > 140000)
FROM employees
# Displays if employees make over $140,000 or not. 

SELECT department, ('Clothing' IN (department, first_name))
FROM employees

SELECT department, (department LIKE '%oth%')
FROM employees
# Shows True or False if a department contains the letters 'oth'.