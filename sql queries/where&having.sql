--find the avergae score for each country
--considering only customers with a score not equal to 0
--and return only those countries with an average score greater than 430

select 
	avg(score) as avg_score,
	country
from customers
where score != 0 
group by country
having avg(score) >430



