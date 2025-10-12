--find the total score and total number of customers for each country

select 
	country,
	sum (score) as total_score,
	count(id) as total_customers
from customers
group by country --we don't have to mention the score or the id because we are aggregating it