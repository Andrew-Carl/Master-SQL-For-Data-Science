SELECT 'This is test data' test_data

SELECT SUBSTRING('This is test data' FROM 1 FOR 4) test_data_extracted
# Extracts word 'This' from column.

SELECT SUBSTRING('This is test data' FROM 9 FOR 4) test_data_extracted
# Extracts word 'test' from column

SELECT SUBSTRING('This is test data' FROM 3) test_data_extracted
# Extracts all words from 'is' on.

SELECT department, REPLACE(department, 'Clothing', 'Attire') modified_data
FROM departments
# Changes the word clothing to attire throughout the table and creates a new column.

SELECT department, 
REPLACE(department, 'Clothing', 'Attire') modified_data
department || ' department' as "Complete Department Name"
FROM departments

SELECT POSITION('@' IN email)
FROM employees
# Shows position of the @ symbol in email column.

SELECT (email, POSITION('@' IN email))
FROM employees
# Shows the domain name of all the email addresses in the email column.

SELECT COALESCE(email, 'NONE') as email
FROM employees
# Replaces NULL values as NONE in email column. 