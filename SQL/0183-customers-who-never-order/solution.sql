# Write your MySQL query statement below
select 
    c.name as Customers 
from customers c
where not exists(
    select 
        1
    from orders o
    where c.id=o.customerid
)