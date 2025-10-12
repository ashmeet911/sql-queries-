--right join
--order of the tables is important here.

--get all customers along with their orders, including orders without matching customers 

select *
from customers as c
right join orders as o
on c.id= o.customer_id