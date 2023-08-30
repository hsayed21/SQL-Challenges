-- Solution 1:
WITH cte AS 
(
	SELECT *,
        (CASE 
       	WHEN SUBSTRING(u.mail,1,1) IN ('.','-','_') THEN NULL
       	WHEN ISNUMERIC(SUBSTRING(u.mail,1,1))=1 THEN NULL
        WHEN u.mail NOT LIKE '%@leetcode.com' THEN NULL
        WHEN PATINDEX('%[^a-zA-Z0-9-_.]%', SUBSTRING(u.mail,1, LEN(u.mail)-13)) > 0 THEN NULL
       	ELSE u.mail
       END) as IsValid  FROM Users u

)
SELECT user_id, name, mail
FROM cte
WHERE IsValid IS NOT NULL

-- Solution 2:
SELECT
    user_id,
    name,
    mail
FROM Users
WHERE mail LIKE '[a-zA-Z]%@leetcode.com' AND LEFT(mail, LEN(mail) - 13) NOT LIKE '%[^0-9a-zA-Z_.-]%'