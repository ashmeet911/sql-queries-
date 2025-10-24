/*
date validation:

ISDATE()- checks if a value is a date.
returns 1 if the string value is a valid date  and 0 if not a valid date.

syntax: ISDATE(value)

ISDATE('2025-08-20')
ISDATE('2025')
*/
SELECT 
ISDATE ('123') as DateCheck1,
ISDATE ('2025-08-20') as DateCheck2,
ISDATE ('2025') as DateCheck3,
ISDATE ('20-08-2025') as DateCheck4, --SQL will not consider this as a date as it does not follow the standard format
ISDATE ('03') as DateCheck5


select
--cast (Orderdate as date) OrderDate,
OrderDate,
ISDATE(OrderDate),
case when ISDATE(OrderDate) = 1then cast(OrderDate as date)
	else '9999-01-01'
end NewOrderDate
from 
(
select '2025-08-20' as OrderDate union
select '2025-08-21' union
select '2025-08-23' union
select '2025-08'
)t

--where ISDATE(OrderDate) = 0