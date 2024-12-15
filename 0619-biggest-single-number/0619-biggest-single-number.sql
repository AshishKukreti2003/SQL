Select MAX(num) AS num FROM(
Select num FROM MyNumbers GROUP BY num HAVING count(num) = 1
) AS OP;