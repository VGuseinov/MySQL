-- task 1
delimiter $$

create function func(employeed int, tipsDate datetime, tipsAmount int)
return float
deterministic
begin
	declare sumTips float;
	
	insert into tips(employee_id, date, amout) 
	values(employeeid, tipsDate, tipsAmount);

	select sum(amount) into sumTips
	from tips
	where employee_id = employeeid;
	
	return sumTips
end $$

-- task 2
delimiter $$

create procedure proc(year1 int, year2 int)
begin
	select pl.name as language_name, author_name, creation_date, biography
	from programming_languages pl
	inner join authors a on pl.id = a.language_id
	where year(cration_date) between year1 and year2
	order by creation_date desc
end $$

