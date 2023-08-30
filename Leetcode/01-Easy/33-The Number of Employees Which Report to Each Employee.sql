SELECT e2.employee_id, e2.name,COUNT(*) reports_count, ROUND(AVG(e1.age*1.00),0) average_age
FROM Employees e1,Employees e2
WHERE e1.reports_to=e2.employee_id
GROUP BY e2.employee_id,e2.name
ORDER BY e2.employee_id