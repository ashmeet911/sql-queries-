/* when we want to insert data from source table to the target table 

insert data from 'customers' into 'persons'
*/
insert into persons (id, person_name, birth_date, phone)
select 
id,
first_name,
null,
'Unknown'
from customers