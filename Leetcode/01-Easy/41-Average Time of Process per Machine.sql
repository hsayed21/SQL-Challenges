-- Solution 1 (Shorter):
SELECT a.machine_id,
ROUND((SUM(IIF(a.activity_type='end',a.timestamp,-a.timestamp)))/COUNT(DISTINCT a.process_id),3) AS processing_time
FROM Activity a
GROUP BY a.machine_id

-- Solution 2 (Longer):
SELECT a.machine_id,
ROUND((SUM(IIF(a.activity_type='end',a.timestamp,0))-SUM(IIF(a.activity_type='start',a.timestamp,0)))/COUNT(DISTINCT a.process_id),3) AS processing_time
FROM Activity a
GROUP BY a.machine_id