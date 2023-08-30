-- Solution 1:
WITH NumberCounts AS (
    SELECT num, COUNT(*) AS NumCount
    FROM MyNumbers
    GROUP BY num
)
SELECT TOP(1) CASE
    WHEN SUM(CASE WHEN NumCount > 1 THEN 0 ELSE 1 END) = 0 THEN NULL
    ELSE num
END num
FROM NumberCounts
GROUP BY num
ORDER BY num DESC;

-- Solution 2:
Select max(a.num) as num
from 
( 
    select num, count(*) AS t2
    from MyNumbers mn
    group by num
    having count(*)=1
) a