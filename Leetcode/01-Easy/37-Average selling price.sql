SELECT s.product_id, ROUND(CAST(SUM(s.units*p.price) as FLOAT)/SUM(s.units),2) AS average_price 
FROM UnitsSold s
LEFT JOIN Prices p ON s.product_id=p.product_id AND (s.purchase_date BETWEEN p.start_date AND p.end_date)
GROUP BY s.product_id