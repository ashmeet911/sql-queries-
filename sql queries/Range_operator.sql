--retrieve all customers whose score falls in the range between 100 and 500

select *
from customers
where score between 100 and 500 --this is same as 'where score >=100 and score <=500'