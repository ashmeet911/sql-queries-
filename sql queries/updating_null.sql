--update all customers with a NULL score by setting their score to 0

update customers 
set score = 0 
where score is null --should not write score = null

select *
from customers
