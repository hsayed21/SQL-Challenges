SELECT user_id, CONCAT(UPPER(SUBSTRING(name,1,1)),SUBSTRING(LOWER(name),2,LEN(name))) name 
FROM Users
ORDER BY user_id