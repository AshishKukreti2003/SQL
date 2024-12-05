# Write your MySQL query statement below
SELECT v.customer_id, COUNT(visit_id) AS count_no_trans FROM Visits AS v WHERE visit_id NOT IN (
Select visit_id FROM Transactions)
GROUP BY customer_id;