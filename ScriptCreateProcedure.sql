use testData;

-- хранимые функции и процедуры

delimiter $$

create procedure getUsers(yearFrom int, yearTo int) begin
	select * from users where year(bday) between yearFrom and yearTo;
	-- between нахождение промежутка 
end $$
