--combine the data from employees and customers into one table including duplicates

select 
	FirstName,
	LastName
from Sales.Customers

union all --returns all rows from both queries, including duplicates

select 
	FirstName,
	LastName
from Sales.Employees