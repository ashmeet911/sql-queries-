select
cast ('123' as int) as [string to int],
cast (123 as varchar) as [int to string],
cast('2025-8-20' as date) as [string to date],
cast('2025-8-20' as datetime2) as [string to datetime],
Creationtime,
cast (CreationTime as date) as [datetime to date]
from Sales.Orders