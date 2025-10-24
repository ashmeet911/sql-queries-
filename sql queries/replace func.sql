--remove dashes (-) from a phone number

select 
	'123-456-7890' as phone_number,
	replace ('123-456-7890', '-', '') as clean_phone

	--replace file extence from txt to csv

	select 
		'report.txt' as old_file_name,
		replace ('report.txt', '.txt', '.csv') as new_file_name