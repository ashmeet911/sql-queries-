--date calculation: DATEADD(), DATEDIFF()
/*
DATEADD()- DATEADD (part, interval, date)
DATEDIFF()- DATEDIFF (part, start_date, end_date)
*/
--DATEADD() Examples

select 
OrderID,
OrderDate,
dateadd(day,-10,OrderDate) as TenDaysEarlier,
dateadd(month,3, OrderDate) as ThreeMonthslater,
dateadd(year,2, OrderDate) as TwoYearslater
from Sales.Orders

--DATEDIFF()Examples

--1. calculate the age of employees

select 
EmployeeID,
BirthDate,
datediff (year, birthdate, getdate()) as age
from Sales.Employees

--2. find the average shipping duration in days for each month

select 
format(OrderDate, 'MMMM') as orderDate,
avg(datediff(day, OrderDate, ShipDate)) as shipping_duration
from Sales.Orders
group by format(OrderDate, 'MMMM')

--3. time gap analysis
-- find the number of days between each order and the previous order

--lag()-  access a value from the previous row

select 
OrderID,
OrderDate as CurrentOrderDate,
lag(OrderDate) over (order by OrderDate) as PreviousOrderDate,
datediff (day,lag(OrderDate) over (order by OrderDate),OrderDate) as NoOfdays
from Sales.Orders