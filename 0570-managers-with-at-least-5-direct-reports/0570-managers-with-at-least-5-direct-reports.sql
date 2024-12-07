# Write your MySQL query statement below
Select e.name 
From Employee AS e
JOIN Employee AS m
ON e.id = m.managerId
GROUP BY e.id, e.name
HAVING COUNT(m.id) >= 5;