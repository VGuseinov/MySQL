use testData;

-- Агрегатные функции

select 
	sum(age),
	sum(bday),
	sum(id),
	avg(id),
	max(bday),
	min(name),
	count(name) 
from users;