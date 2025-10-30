/*
NULL FUNCTIONS:

•	NULLs are special markers means missing values.
•	Using NULLs can optimize storage and performance.
•	NULL means nothing, UNKNOWN!
•	NULL is not equal to anything!
•	NULL is not zero
•	NULL is not empty string
•	NULL is not blank space

ISNULL:
	replace NULL with  a specific value
	ISNULL (value, replacement_value)
	Default value is ‘unknown’
	Limited to two values
	Faster than COALESCE
	Different in different databases:
		SQL server- ISNULL
		ORACLE- NVL
		MySQL- IFNULL
COALESCE:
	returns the first non-nullvalue from a list
	COALESCE(value1, value2, value3,....)
	Default value is 'N/A'
	Available in all databases

#USE CASE:
1. handle the NULL before doing data aggregations
2. handle NULL before doing mathematical operations
	 if not handled, NULL + 5 = NULL


NULLIF:
	compares two expressions returns:
		-NULL, if they are equal.
		-First value, if they are not equal.
	NUllIF(value1,value2)
	basically opposite of coalesce

	#USE CASE:
		-preventing the error of division by zero

IS NULL:
	handle the NULL before joining tables
	handle the NULL before sorting the data (asc- NULL will come first)
	method 1:replacing NULL with a big number
	method 2:using 'case when' to show NULL

IS NOT NULL:
	retruns TRUE if the value IS NOT NULL otherwise FALSE
	Value IS NOT NULL
	IS NULL- Value IS NULL

	#USE CASE:
		-data filtering: searching for missing information
		LEFT ANTI JOIN | RIGHT ANTI JOIN - finding the unmatched rows between two tables
		(left join + is null) & (right join + is null)


NULL vs EMPTY STRING vs BLANK SPACES:
	NULL- means nothing, unknown!
	EMPTY STRUNG ''- string value has zero characters
	BLANK SPACES ' '- string value has one or more space characters
*/


/*
DATA POLICIES:
set of rules that defines how data should be handled
	
	#1- Only use NULLs and empty strings, but avoid blank spaces
		trim() function can be used for this
		TRIM()- removes unwanted leading and trailing spaces from a string
		this is least used as it can be confusing.

	#2- Only use NULLs and avoid empty strings and blank spaces
		#USE CASE:
			-replacing empty strings and blanks with NULL during data preparation 
			before inserting ito a database to optimize storage and performance

	#3- Use only default value 'unknown' and avoid using nulls, empty strings, and blank spaces
		#USE CASE:
			-replacing empty strings, blanks, NULL with default value during data preparation
			before using it in reporting to improve readability and reduce confusion
*/


--COALESCE/ISNULL:
--find te avergae scores of the customers

select 
CustomerID,
Score,
coalesce(score,0) as Score2,
avg(score) over () as AvgScores,
avg(coalesce(score,0)) over () AvgScores2
from Sales.Customers


--display the full name of customers in a single field
--by merging their first and last name
--and add 10 bonus points to each customer's score.

select 
CustomerID,
FirstName,
LastName,
coalesce(Lastname, '') as LastName2,
Firstname + ' ' + coalesce(Lastname, '') as Fullname, --if no last name, fullname will come as null
--therefore using 'coalesce' helps in handling the null values
--score +10 as ScoreWithBonus -- this will show null in the bonus if no score available
score,
coalesce(score,0) + 10 as ScoreWithBonus
from Sales.Customers


--IS NULL:
--sort the customers from lowest to highest scores,
--with nulls appearing last

select 
	CustomerID,
	Score,
	--coalesce(Score,999999), --replacing NULL with a big number
	--this is an unprofessional way as we put a static value here 
	case when Score is null then 1 else 0 end as flag
from Sales.Customers
--order by coalesce(Score,999999) --if 'asc' then NUll will be the lowest value
order by case when Score is null then 1 else 0 end, Score


--NULLIF:
--find the sales price for each order by diving sales by quantity

select 
	OrderID,
	Sales,
	Quantity,
	Sales / NULLIF (Quantity,0) as Price
	--Sales / Quantity as price --this will simply show error
from Sales.Orders


--IS NULL, IS NOT NULL:
--identify the customers who have no scores
select *
from Sales.Customers
where Score is null --this will specifically only show the null value
--where Score is not null --this will show a clean list without any nulls

--LEFT JOIN+IS NULL = LEFT ANTI JOIN:
--list all details for customers who have not placed any orders
select 
	c.*,
	o.OrderID 
from Sales.Customers as c
left join Sales.Orders as o
on c.CustomerID = o.CustomerID
where o.CustomerID is null


--NULL vs EMPTY STRING vs BLANK SPACES and data policies:
--Policy 1:
with orders as (
select 1 as ID , 'A' as Category union
select 2, null union
select 3, '' union
select 4, '  ' 
)
select *,
datalength (Category) as CategoryLen ,
datalength (trim(Category)) as Policy1
--this will help us understand the spaces
from orders

--Policy 2:
with orders as (
select 1 as ID , 'A' as Category union
select 2, null union
select 3, '' union
select 4, '  ' 
)
select *,
trim(Category) as Policy1,
nullif(trim(Category), '') as Policy2
from orders

--Policy 3:
with orders as (
select 1 as ID , 'A' as Category union
select 2, null union
select 3, '' union
select 4, '  ' 
)
select *,
trim(Category) as Policy1,
nullif(trim(Category), '') as Policy2,
--coalesce(category, 'unknown') as policy3 --this would still not be very clear as if will show 'unknown' to only the NULL values
coalesce(nullif(trim(Category),''), 'unknown') as Policy3
from orders
