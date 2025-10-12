/*
left anti join
returns rows from left that has no match in right

(order of tables is very important)

select *
from a
left join b
on a.key = b.key
where b.key is null

here the table a is the primary source and table b is just used for filtering.
*/

--get all customers who have not placed any order

select *
from customers as c
left join orders as o
on c.id= o.customer_id
where o.customer_id is null