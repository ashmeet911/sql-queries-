/*
using salesDB, retrieve a list of all orders,
along with the related customers, product, and employee details.

for each order. display:
-order id
-customer's name
pproduct name
sales amount
product price
salesperson's name
*/


use SalesDB

select 
	o.OrderID,
	o.Sales,
	c.FirstName as CustomerFirstName,
	c.LastName as CustomerLastName,
	p.Product as ProductName,
	p.Price,
	e.FirstName as EmployeeFirstName,
	e.LastName as EmployeeLastName
from Sales.Orders as o
left join Sales.Customers as c
on o.CustomerID = c.CustomerID
left join Sales.Products as p
on o.ProductID = p.ProductID
left join Sales.Employees as e
on o.SalesPersonID = e.EmployeeID
