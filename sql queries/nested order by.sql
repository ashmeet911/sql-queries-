--nested order by
select *
from customers
order by
	country asc,
	score desc