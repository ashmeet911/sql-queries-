--add a column called email to the persons table
--ALTER - you can use definition of the table, adding a new column

alter table persons
add email varchar(50) not null --the new columns are appended at the end of the table by default

select * from persons