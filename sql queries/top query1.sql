--retrieve top 3 customers with the highest scores

select top 3*
from customers 
order by score desc