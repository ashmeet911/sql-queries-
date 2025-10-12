--Retrieve all customers  who are from the USA and have a score greater than 500

select *
from customers
where country = 'USA' AND score >500

--Retrieve all customers  who are from the USA or have a score greater than 500

select *
from customers 
where country = 'USA' OR score > 500

--Retrieve all customers with score not less than 500

select *
from customers
where NOT score >= 500