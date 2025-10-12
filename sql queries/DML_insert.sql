insert into customers (id, first_name, country, score)
--columns and values must be in same order.
--must match data types, constraints and order.
--you can skip the columns if you insert values for every column.
--always list the columns explicitly for clarity and maintainibility.
--colmns not included in INSERT become NULL (unless a default or constraints exists).
--you cannot skip the column that are NOT NULL.
values 
(6, 'Anna', 'USA', NULL),
(7, 'Sam', null,100)

select *
from customers
