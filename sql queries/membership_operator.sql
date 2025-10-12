--retrieve all customers from either germany or usa

select *
from customers
where country in ('Germany', 'USA') 
--this is same as 'where country = 'Germany' or country = 'USA' '
--use IN instead of OR for multiple values in the same column to simplify SQl and can be easier to extend

--retrieve all customers from neither germany nor usa

select *
from customers
where country not in ('Germany', 'USA') 
