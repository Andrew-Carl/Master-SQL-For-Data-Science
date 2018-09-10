SELECT department, COUNT(*)
FROM employees
WHERE department IN ('Sports', 'Tools', 'Clothing', 'Computers')
GROUP BY department

SELECT SUM(CASE WHEN department = 'Sports' THEN 1 ELSE 0 END) as Sports_Employees
SUM(CASE WHEN department = 'Tools' THEN 1 ELSE 0 END) as Tools_Employees
SUM(CASE WHEN department = 'Clothing' THEN 1 ELSE 0 END) as Clothing_Employees
SUM(CASE WHEN department = 'Computers' THEN 1 ELSE 0 END) as Computer_Employees
FROM employees;

SELECT * FROM regions

SELECT first_name,
CASE WHEN region_id = 1 THEN (SELECT country FROM regions WHERE region_id = 1) END region_1,
CASE WHEN region_id = 2 THEN (SELECT country FROM regions WHERE region_id = 2) END region_2,
CASE WHEN region_id = 3 THEN (SELECT country FROM regions WHERE region_id = 3) END region_3,
CASE WHEN region_id = 4 THEN (SELECT country FROM regions WHERE region_id = 4) END region_4,
CASE WHEN region_id = 5 THEN (SELECT country FROM regions WHERE region_id = 5) END region_5,
CASE WHEN region_id = 6 THEN (SELECT country FROM regions WHERE region_id = 6) END region_6,
CASE WHEN region_id = 7 THEN (SELECT country FROM regions WHERE region_id = 7) END region_7,
FROM employees

SELECT * FROM (
SELECT first_name,
CASE WHEN region_id = 1 THEN (SELECT country FROM regions WHERE region_id = 1) END region_1,
CASE WHEN region_id = 2 THEN (SELECT country FROM regions WHERE region_id = 2) END region_2,
CASE WHEN region_id = 3 THEN (SELECT country FROM regions WHERE region_id = 3) END region_3,
CASE WHEN region_id = 4 THEN (SELECT country FROM regions WHERE region_id = 4) END region_4,
CASE WHEN region_id = 5 THEN (SELECT country FROM regions WHERE region_id = 5) END region_5,
CASE WHEN region_id = 6 THEN (SELECT country FROM regions WHERE region_id = 6) END region_6,
CASE WHEN region_id = 7 THEN (SELECT country FROM regions WHERE region_id = 7) END region_7,
FROM employees
    ) a

SELECT COUNT(a.region_1) + COUNT(a.region_2) + COUNT(a.region_3) as United_States,
COUNT(a.region_4) + COUNT(a.region_5) as Asia,
COUNT(a.region_6) + COUNT(a.region_7) as Canada
FROM (
SELECT first_name,
CASE WHEN region_id = 1 THEN (SELECT country FROM regions WHERE region_id = 1) END region_1,
CASE WHEN region_id = 2 THEN (SELECT country FROM regions WHERE region_id = 2) END region_2,
CASE WHEN region_id = 3 THEN (SELECT country FROM regions WHERE region_id = 3) END region_3,
CASE WHEN region_id = 4 THEN (SELECT country FROM regions WHERE region_id = 4) END region_4,
CASE WHEN region_id = 5 THEN (SELECT country FROM regions WHERE region_id = 5) END region_5,
CASE WHEN region_id = 6 THEN (SELECT country FROM regions WHERE region_id = 6) END region_6,
CASE WHEN region_id = 7 THEN (SELECT country FROM regions WHERE region_id = 7) END region_7,
FROM employees
    ) b
