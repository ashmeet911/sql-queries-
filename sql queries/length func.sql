--calculate the length of each customer's first name

select 
	first_name,
	len(first_name) as len_of_firstName
from customers