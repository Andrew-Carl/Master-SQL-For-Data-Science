SELECT * FROM employees
WHERE department NOT IN ('DEPART1', 'DEPART2', 'DEPART3')

SELECT * FROM employees
WHERE department NOT IN (SELECT department FROM departments)
						('Sports', 'Tools', 'Clothing', 'First Aid')

SELECT * FROM employees
WHERE department NOT IN (SELECT department FROM departments)

SELECT *
FROM (SELECT * FROM employees WHERE salary > 150000) a

SELECT a.first_name, a.salary
FROM (SELECT * FROM employees WHERE salary > 150000)

SELECT a.first_name, a.salary
FROM (SELECT first_name employee_name, salary yearly_salary
	 FROM employees WHERE salary > 150000) a

SELECT a.employee_name, a.yearly_salary
FROM (SELECT first_name employee_name, salary yearly_salary
	 FROM employees WHERE salary > 150000)