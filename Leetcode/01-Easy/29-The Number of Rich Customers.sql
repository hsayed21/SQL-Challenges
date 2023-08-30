-- Solution 1:
WITH cte AS 
(
  SELECT customer_id, Count(CASE WHEN amount > 500 THEN 1 END) AS AG500 FROM Store
  GROUP BY customer_id
)
SELECT COUNT(customer_id) rich_count 
FROM cte
WHERE AG500 > 0

-- Solution 2:
SELECT COUNT(DISTINCT customer_id) AS rich_count
FROM Store
WHERE amount > 500