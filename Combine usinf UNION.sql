/*
orders data are stored in separate tables (orders and ordersArchive)
combine all orders data into one report without duplicates
*/

select   --never use an asterisk (*) to combine tables, list all the needed columns instead 
--because * is a time consuming process
	OrderID,
	ProductID,
	CustomerID,
	SalesPersonID,
	OrderDate,
	ShipDate,
	OrderStatus,
	ShipAddress,
	BillAddress,
	Quantity,
	Sales,
	CreationTime
from Sales.Orders

union --if duplicates were to be included, we would've used UNION ALL

select 
	OrderID,
	ProductID,
	CustomerID,
	SalesPersonID,
	OrderDate,
	ShipDate,
	OrderStatus,
	ShipAddress,
	BillAddress,
	Quantity,
	Sales,
	CreationTime
from Sales.OrdersArchive