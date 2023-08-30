-- Solution 1:
SELECT DISTINCT p.product_name, s.year, s.price
FROM Sales s
JOIN Product p ON s.product_id = p.product_id

-- Solution 2:
SELECT p.product_name, s.year, s.price FROM Sales s
INNER JOIN Product p ON p.product_id=s.product_id