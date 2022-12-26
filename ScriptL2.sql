use testData;

-- добавление данных в таблицу

-- insert into users(age, bday, name) values (12, '2009-09-30 15:12:56', "Alex"), (12, '1963-02-19 15:12:56', "Bond");

-- обновление данных в таблице

update users set name = "Vitas", age = age + 1 where age >= 10 and age <= 30;

-- удаление данных из таблицы

delete from users where name = "Vitas";