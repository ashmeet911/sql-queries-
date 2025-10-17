/* 
get all customers along with their orders,
but only for customers who have placed an order
(without using INNER JOIN)	
*/

select *
from customers as c
left join orders as o
on c.id = o.customer_id
where o.customer_id is not null