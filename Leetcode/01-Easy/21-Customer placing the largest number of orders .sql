SELECT top(1) customer_number FROM orders
GROUP BY  customer_number
ORDER BY count(order_number) DESC