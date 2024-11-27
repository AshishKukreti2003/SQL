# Write your MySQL query statement below
Select class From Courses GROUP BY class HAVING COUNT(class) >= 5;