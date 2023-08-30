SELECT c.name FROM Customer c
WHERE ISNULL(c.referee_id,0) != 2