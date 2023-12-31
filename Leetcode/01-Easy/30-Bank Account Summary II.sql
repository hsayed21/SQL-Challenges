SELECT u.name, SUM(t.amount) AS balance FROM Transactions t
INNER JOIN Users u ON t.account = u.account
GROUP BY t.account, u.name
HAVING SUM(t.amount) > 10000