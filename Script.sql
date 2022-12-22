use testData;

-- комментарии
-- нет многострочных!

-- выборка данных из таблицы

select name, age from users;

-- Результатом выполнеия команды select всегда является таблица (резуьтирующая таблица)

select * from users;

-- select * это выборка всех столбцов

select name as username, age as userage from users;

-- Выборка с фильтром

select * from users where age > 10 and id <> 4 or age = id;

-- <> строгое неравенство (!= из Java)

-- order by сортировка данных при выборке

select * from users order by age desc;

select * from users group by name having count(name) > 3;
