# Write your MySQL query statement below
Select s.user_id, 
ROUND(
    IFNULL(SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) /Count(c.user_id),0) ,2) AS confirmation_rate
FROM Signups as s 
LEFT JOIN Confirmations AS c 
ON s.user_id = c.user_id 
GROUP BY s.user_id;