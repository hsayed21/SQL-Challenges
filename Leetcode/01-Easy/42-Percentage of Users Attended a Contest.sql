SELECT r.contest_id, ROUND(COUNT(r.user_id)*1.00 / (SELECT COUNT(*) FROM Users u1) * 100,2) percentage
FROM Register r
INNER JOIN Users u ON r.user_id=u.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id ASC