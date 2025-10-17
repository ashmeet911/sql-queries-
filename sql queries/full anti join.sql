/*
full anti join- returns only the rows that don't match either tables 
order of tables does not matter
*/

--find customers without orders and orders without customers

select *
from orders as o
full join customers as c
on c.id = o.customer_id
where c.id is null or o.customer_id is null