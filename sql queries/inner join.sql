/*inner join
this is the default type of join

select *
from A
INNER JOIN B    If we do not mention inner here, it would still execute as per inner join
ON A.Key = B.Key <condition>  - on how to match these rows

the order of tables doesn't matter
*/

-- get all customers along with their orders, but only for customers who have placed an order
select *
from customers 
inner join orders
on id = customer_id
