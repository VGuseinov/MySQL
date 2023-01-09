use testData;

-- вызов процедуры

call getUsers(1980, 2000);

call newAge();

call fixAge(); 

-- вызов функции

select averageAge('1980-08-20') as averageAge; 

set @a = averageAge('1080-08-20'); -- создание переменной
select @a * 10; 

select * from users where age > @a;