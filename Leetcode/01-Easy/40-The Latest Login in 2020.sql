-- Solution 1:
WITH cte AS 
(
	SELECT user_id, MAX(CASE 
       	WHEN YEAR(time_stamp)='2020' THEN time_stamp
       END) last_stamp FROM Logins
  GROUP BY user_id 
)
SELECT * 
FROM cte
WHERE last_stamp IS NOT NULL

-- Solution 2:
SELECT 
    user_id, 
    MAX(time_stamp) AS last_stamp
FROM Logins
WHERE YEAR(time_stamp) = 2020
GROUP BY user_id;