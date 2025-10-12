--find total score for each country

select
	country,
	first_name, --writing only this here gives an error hence must also be written in the group by command in order to show clarity
	sum(score) as new_score  --as is used to rename any column 
from customers 
group by country, first_name  --if only country were written here then the aggregation must've been done via the scores but here it is done using both these columns


