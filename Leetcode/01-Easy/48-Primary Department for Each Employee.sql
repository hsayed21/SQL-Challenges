WITH cte AS 
(
	SELECT e.employee_id,
       CASE 
           WHEN COUNT(e.employee_id) > 1 THEN
              IIF(COUNT(IIF(e.primary_flag = 'Y',e.department_id,NULL))>=1, MAX(IIF(e.primary_flag = 'Y',e.department_id,NULL)), NULL)
           ELSE MAX(e.department_id)
       END AS department_id
  FROM Employee e
  GROUP BY e.employee_id
)
SELECT * 
FROM cte
WHERE department_id IS NOT NULL