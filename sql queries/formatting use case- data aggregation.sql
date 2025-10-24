--use case of data formatting: data aggregation

select 
format(OrderDate, 'MMM yy') order_date,
count (*) count
from Sales.Orders
group by format(OrderDate, 'MMM yy')