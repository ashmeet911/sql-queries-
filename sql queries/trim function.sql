--find customers whose first name contains leading or trailing spaces

select 
	first_name,
	len (first_name) as len_name,
	len(trim(first_name)) as len_trim_name,
	len (first_name) - len (trim(first_name)) as flag
from customers
--where first_name != trim (first_name)