SELECT departments.department
FROM employees, departments

SELECT e.department
FROM employees e, departments d

SELECT e.department
FROM (SELECT * FROM XYZ)