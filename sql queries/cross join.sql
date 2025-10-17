/*
CROSS JOIN
combines every row from left with every row from right
all possible combinations
like cartesian join

everything from table A as well as B

it makes te database really busy

select *
from A
CROSS JOIN B

the order of tables does not matter 

no conditions required
*/

--generate all possible combinations of customers and orders.

select *
from orders
cross join customers 