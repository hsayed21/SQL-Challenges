SELECT emp.employee_id FROM Employees emp
LEFT JOIN Employees mang ON emp.manager_id = mang.employee_id
WHERE emp.salary < 30000 AND mang.employee_id IS NULL AND emp.manager_id IS NOT NULL
ORDER BY emp.employee_id