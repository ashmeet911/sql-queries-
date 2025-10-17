--find employees who are not customers at the same time

select 
	FirstName,
	LastName
from Sales.Employees

except --returns all distinct rows from the first query that are not found in the second query. 

select 
	FirstName,
	LastName
from Sales.Customers