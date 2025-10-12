/*select 123 as static_value

select 'hello' as static_string
*/

select
	id,
	first_name,
	'new customer' as customer_type   --this will just give a static value
from customers