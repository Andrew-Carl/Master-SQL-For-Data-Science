SELECT SUM(salary)
FROM employees
WHERE 1=1
GROUP BY department

SELECT department, SUM(salary)
FROM employees
WHERE 1=1 
GROUP BY department

SELECT department, SUM(salary)
FROM employees
WHERE region_id in (4,5,6,7)
GROUP BY department

SELECT departments, COUNT(employee_id)
FROM employees
GROUP BY department 
# Finds the number of employees in each department. 

SELECT departments, COUNT(*)
FROM employees
GROUP BY department 
# Does the same thing as the above code. 

SELECT department, COUNT(*), AVG(salary)
FROM employees
GROUP BY department
# Finds the number of employees and the average salary in each department.

SELECT department, COUNT(* total_number_employees
round(AVG(salary)) avg_sal, MIN(salary) min_sal,
MAX(salary) max_sal
FROM employees
GROUP BY department
ORDER BY total_number_employees desc
# Finds the number of employees and the average salary, minimum salary, 
# and maximum salary in each department. Orders by number of employess descending. 

SELECT department, gender, COUNT(*)
FROM employees
GROUP BY department, gender
ORDER BY department
# Groups by department and gender.

SELECT department
FROM employees
GROUP BY department
HAVING count(*) > 35
ORDER BY department
# Orders departments that have more than 35 employees. 