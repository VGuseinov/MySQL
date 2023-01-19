use testData;

-- написать функцию которая принимает данные от пользователя
-- добавляет запись об жтом пользователе и возвращает средний возраст 
-- пользователенй родившихся в тот же год

delimiter $$

create function func(user_age int, user_name varchar(50), user_bday datetime)
returns float
deterministic
begin
	declare avgAge float;
	
	insert into users(age, name, bday) values(user_age, user_name, user_bday);

	select avg(age) into avgAge from users where year(user_bday) = year(bday);
	
	return avgAge;
end $$


