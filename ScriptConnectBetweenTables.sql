use testData;

-- связи между таблицами

-- один к одному

select u.id, name, age, bday, address, email from users u inner join usersinfo ui on ui.user_id = u.id;

select u.id, name, age, bday, address, email from users u left join usersinfo ui on ui.user_id = u.id;

select u.id, name, age, bday, address, email from users u right join usersinfo ui on ui.user_id = u.id;

-- один ко многим



-- многие ко многим

select name, m.model, from users u inner join users_mobiles um on u.id inner join mobiles m on um.user_smartphone  = m.model;