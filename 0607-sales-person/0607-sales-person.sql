# Write your MySQL query statement below
Select name From SalesPerson AS S WHERE s.sales_id NOT IN(Select o.sales_id FROM Orders AS o JOIN Company AS c ON o.com_id = c.com_id WHERE c.name = 'RED');