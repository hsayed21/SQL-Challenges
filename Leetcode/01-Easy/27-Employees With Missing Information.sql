SELECT COALESCE(s.employee_id,e.employee_id) AS employee_id FROM Salaries s 
FULL OUTER JOIN Employees e ON s.employee_id = e.employee_id
WHERE s.salary IS NULL OR e.employee_id IS NULL
ORDER BY employee_id