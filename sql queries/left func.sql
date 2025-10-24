--retrieve the first two characters of each first name 

select
	first_name,
	left (first_name , 2) as first_2_char
from customers