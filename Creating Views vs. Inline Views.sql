SELECT first_name, email, e.department, salary, division, region, country
FROM employees e, departments d, regions r
WHERE e.department = d.department
AND e.region_id = r.region_id

CREATE VIEW v_employee_information AS
SELECT first_name, email, e.department, salary, division, region, country
FROM employees e, departments d, regions r
WHERE e.department = d.department
AND e.region_id = r.region_id
# Creates a view called v_employee_information in the database.

SELECT * FROM
v_employee_information
# Opens up view created above

SELECT * 
FROM (SELECT * FROM departments) # This is an Inline View. 