use testData;

-- написать процедуру которая создает резулдьтирующую таблицу
-- с полями name, id, address, email, bday
-- включает пользователей у которых день рождения в текущем меяце выводит именниников
-- отсортированых в порядке убываения по столбцу bday

delimiter $$

create procedure proc()
begin
	select name, u.id as user_id, address, email, bday from users u inner join usersinfo ui on u.id = ui.user_id
	where month(now()) =  month(bday) order by bday desc; 
end $$

