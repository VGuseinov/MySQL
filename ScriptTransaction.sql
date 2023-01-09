use testData;

-- транзакции

start transaction;
	-- 1 запрос
	update users set age = 12 where id = 2;

	-- 2 запрос
	delete from users where id2 = 1;
commit; -- отката изменнений не произойдет
-- rollback; -- изменения в случае ошибки откатятся