# Write your MySQL query statement below
Select x,y,z, 
case WHEN x+y>z AND x+z>y AND z+y>x THEN 'Yes' else 'No'
end as triangle
FROM Triangle;