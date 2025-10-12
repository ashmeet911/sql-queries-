--change he score of customer 6 to 0
update customers
set score = 0 --without WHERE clause, all rows will be updated.
where id = 6
select *
from customers 
where id = 6