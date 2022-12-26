use testData;

-- функции и операторы работы со строками

select * from users where name like "Neo";

select * from users where name not like "Neo";

select * from users where not (age = 32);

-- % - заменяет любую последовательность символов любой длинны

-- _ - заменяет ровно один символ

select * from users where name like '%n_o';

-- CONCAT объединение строк
-- LENGTH длинна строки
-- LOWER првидение строки к нижнему регистру
-- UPPER приведение сроки к верхнему регистру

select concat('[' ,name, ']'), lower(name), upper(name), length(name), substring(name, 1, 3)  from users where length(name) = 3;
-- [1] это номер символа начала подстроки [5] длинна подстроки




