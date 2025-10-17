--combine the data from employees and customers into one table

select 
	FirstName,
	LastName
from Sales.Customers

union --returns all distinct rows from both the tables
 
select 
	FirstName,
	LastName
from Sales.Employees