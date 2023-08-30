-- Solution 1:
SELECT v.author_id AS id FROM Views v
GROUP BY v.author_id
HAVING COUNT(CASE WHEN v.author_id=v.viewer_id THEN 1 End) >= 1

-- Solution 2:
SELECT v.author_id AS id FROM Views v
WHERE v.author_id=v.viewer_id
GROUP BY v.author_id
HAVING COUNT(v.author_id) >= 1