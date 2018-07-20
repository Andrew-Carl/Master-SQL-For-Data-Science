SELECT * 
FROM employees
WHERE NOT department = 'Sports'

SELECT * 
FROM employees
WHERE department != 'Sports'

SELECT * 
FROM employees
WHERE department <> 'Sports'
# All 3 of the above do the same thing. 

SELECT * 
FROM employees
WHERE email IS NULL

SELECT * 
FROM employees
WHERE email IS NOT NULL

SELECT * 
FROM employees
WHERE department = 'Sports'
OR deparment = 'First Aid'
OR department = 'Toys'
OR department = 'Garden'

SELECT * 
FROM employees
WHERE department IN ('Sports', 'First Aid', 'Toys', 'Garden')
# Does the same as above.

SELECT *
FROM employees
WHERE salary BETWEEN 80000 AND 100000