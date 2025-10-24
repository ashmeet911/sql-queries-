--retrieve the last two characters of each first name 

select
	first_name,
	right (first_name , 2) as last_2_char
from customers