SELECT p.product_name, SUM(o.unit) AS unit FROM Orders o
INNER JOIN Products p ON o.product_id = p.product_id
WHERE o.order_date BETWEEN '02/01/2020' AND '02/29/2020'
GROUP BY o.product_id,p.product_name
HAVING SUM(o.unit) >= 100