SELECT employee_id, employee_name  FROM (
SELECT 
mng.employee_id AS manager_id,
mng.name AS manager_name,
mng.salary AS manager_salary,
emp.employee_id AS employee_id,
emp.name AS employee_name,
emp.salary AS employee_salary
FROM employee AS mng
INNER JOIN employee as emp
ON mng.employee_id = emp.manager_id
) AS cross_emp
WHERE 
manager_salary < employee_salary
;

