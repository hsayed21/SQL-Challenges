SELECT ROUND((CAST(COUNT(CASE WHEN order_date = customer_pref_delivery_date THEN 1 END) AS FLOAT) / COUNT(*)) * 100, 2) AS immediate_percentage 
FROM Delivery;