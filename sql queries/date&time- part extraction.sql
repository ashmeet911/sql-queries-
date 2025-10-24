--date & time functions: part extraction

/*
DAY ()- returns the day from a date
MONTH ()- returns the month from a date
YEAR ()- returns the year from a date
DATEPART()- returns a specific part of a date
DATENAME()- returns name of the datepart
DATETRUNC()- truncates the date to the specific part
EOMONTH()- returns last day of the month

Datatype of these functions is INTEGER
*/
select 
	OrderID,
	CreationTime,
	--DATETRUNC Examples
	DATETRUNC (day, CreationTime) as day_dt,
	DATETRUNC (minute, CreationTime) as Minute_dt,
	DATETRUNC (year, CreationTime) as year_dt,
	--DATENAME Examples
	DATENAME(month, CreationTime) as Month_dn,
	DATENAME(WEEKDAY, CreationTime) as weekday_dn,
	DATENAME(day, CreationTime) as day_dn, --string value
	--DATEPART Examples
	DATEPART(year, CreationTime) as Year_dp,
	DATEPART(month, CreationTime) as Month_dp,
	DATEPART(day, CreationTime) as Day_dp, --integer value
	DATEPART(hour, CreationTime) as Hour_dp,
	DATEPART(QUARTER, CreationTime) as Quarter_dp,
	DATEPART(week, CreationTime) as Week_dp,
	year (CreationTime) as year,
	month (CreationTime) as month,
	day (CreationTime) as day
from Sales.Orders


select 
DATETRUNC (year, CreationTime) as Creation,
count (*)
from Sales.Orders
group by DATETRUNC(year, CreationTime)


SELECT
	OrderID,
	CreationTime,
	EOMONTH(CreationTime) as EndOfMonth,
	CAST(DATETRUNC(month, CreationTime) AS DATE) as StartOfMonth --CAST changes the date & time format to only date
FROM Sales.Orders