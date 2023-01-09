use testData;

-- создание функции

delimiter $$

create function averageAge(sDate date)
returns float
reads sql data
begin
	-- deaclare дожен распологаться в начале тела функции либо процедуры
	declare avgAge float; 
	
	select avg(age) into avgAge from users where bday > sDate;

	return avgAge;
end $$