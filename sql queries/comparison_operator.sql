--retrieve all customers from germany.

select *
from customers
where country = 'Germany'

--retrieve all customers who are not from germany

select *
from customers
where country != 'Germany'

--retrieve all customers with a score greater than 500

select *
from customers
where score>500

--retrieve all customers with a score of 500 or more

select *
from customers
where score >= 500

--retrieve all customers with a score less than 500

select *
from customers
where score<500

--retrieve all customers with a score of 500 or less
select *
from customers
where score<=500