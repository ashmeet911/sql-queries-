select
	orderID,
	CreationTime,
	'2025-10-21' as hardcoded, --same for all rows 
	getdate () today
from 
Sales.Orders 