--concatenate first name and country into one column
use MyDatabase

select 
	first_name,
	country,
	concat (first_name, ' ', country) as name_country
from customers
