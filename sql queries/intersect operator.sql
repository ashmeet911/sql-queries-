--find the employess, who are also customers

select 
	FirstName,
	LastName
from Sales.Employees

intersect --returns only the rows that are common in both queries

select 
	FirstName,
	LastName
from Sales.Customers