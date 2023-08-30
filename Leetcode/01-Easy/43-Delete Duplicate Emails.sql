DELETE FROM Person
WHERE id NOT IN
(
  SELECT MIN(id) FROM Person p
  GROUP BY p.Email
)