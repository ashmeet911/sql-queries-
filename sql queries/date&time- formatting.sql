select 
	OrderID,
	CreationTime,
	format (CreationTime, 'MM-dd-yyyy' ) as USA_Format,
	format (CreationTime, 'dd-MM-yyyy' ) as Europe_Format,
	format (CreationTime, 'dd' ) as dd,
	format (CreationTime, 'ddd' ) as ddd,
	format (CreationTime, 'dddd' ) as dddd,
	format (CreationTime, 'MM' ) as MM,
	format (CreationTime, 'MMM' ) as MMM,
	format (CreationTime, 'MMMM' ) as MMMM,
	format (CreationTime, 'yy' ) as YY,
	format (CreationTime, 'yyyy' ) as YYYY

from Sales.Orders

--show creation time using the following format: 
--Day Wed Jan Q1 2025 12:34:56 PM

SELECT 
OrderID,
CreationTime,
'Day' + format (CreationTime, ' ddd MMM ') +
'Q' + datename (quarter, CreationTime) + ' ' +
format (CreationTime, 'yyyy hh:mm:ss tt')
as CustomFormat
FROM Sales.Orders