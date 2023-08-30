SELECT emp.name AS Employee FROM Employee emp
INNER JOIN Employee mang ON emp.managerId = mang.id
WHERE emp.salary > mang.salary