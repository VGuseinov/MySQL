use testData;

-- функции работы с датой

select 
	date(bday), 
	time(bday),
	year(bday),
	month(bday), 
	week(bday),
	hour(bday),
	minute(bday),
	monthname(bday),
	-- получение текущей даты
	now(),
	datediff(bday, now()),
	date_add(now(), interval 100 year),
	date_add(now(), interval -1000 year)
from users;



