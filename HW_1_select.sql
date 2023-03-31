
CREATE TABLE public.students (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL,
	created_on timestamp NOT NULL,
	CONSTRAINT students_email_key UNIQUE (email),
	CONSTRAINT students_pkey PRIMARY KEY (id)
);

select * from students;

--Вывести все поля и все строки
select * from students;

--Вывести всех студентов в таблице
select name as students from students;

--Вывсести только id пользователей
select id from students;

--Вывести только имя пользователя
select name from students;

--Вывести только email пользователя
select email from students;

--Вывести id,имя, email и дату создания пользователя
select id, name, email, created_on  from  students;

--Вывести пользователя где password 12333
select name  from students 
where password='12333';

--Вывести пользователи которые были созданны 2021-03-26 00:00:00
select name from students 
where created_on='2021-03-26 00:00:00.000';

--Вывести пользователей где в имени есть слово Анна
select name from students
where Name like'Anna';

--Вывести пользователей где в имени в конце есть 8
select name from students where name like'%8';

--12.Вывести пользователей где в имени есть буква а
select name from students where name like '%a%'; 

--13.Вывести пользователей которые были созданны 2021-07-12 00:00:00
select name from students where created_on='2021-07-12 00:00:00.000';

--14.Вывести пользователей которые были созданны 2021-07-12 00:00:00  и имеют пароль 1m313
select name from students 
where created_on='2021-07-12 00:00:00.000' and password='1m313';

--15.Вывести пользователей которые были созданны 2021-07-12 00:00:00  и у которых в имени есть слово Andrey
select name from students where created_on='2021-07-12 00:00:00.000' and  name like'%Andrey%';

--16.Вывести пользователи которые были созданны2021-07-12 00:00:00 и у которых в имени есть цифра 8
select name from students where created_on='2021-07-12 00:00:00.000' and name like '%8%';

--17.Вывести пользователя у которых id=110
select name from students where id='110';

--18.Вывести пользователя у которых id=153
select name from students where id='153';

--19.Вывести пользователя у которых id>140
select name from students where id>'140';

--20.Вывести пользователя у которых id<130
select name from students where id<'130';

--21.Вывести пользователей у которых id меньше 127 или больше 188
select name from students where id<'127' or id>'188';

--22.Вывести пользователей у которых  id меньше либо равно 137
select name from students where id<='137';

--23.Вывести пользователей у которых id больше либо равно 137   
select name from students where id>='137';

--24.Вывести пользователей у которых id больше 180,но меньше 190
select name from students where id>'180' and id<'190';

--25.Вывести пользователей у которых id между 180 и 190
select name from students where id  between '180'and'190';

--26.Вывести пользователей у которых где password равен 12333,1m313,123313
select name from students where password in('12333','1m313','123313');
                                    
--27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select name from students 
where created_on in('2020-10-03 00:00:00.000', '2021-05-19 00:00:00.000','2021-03-26 00:00:00.000');

--28. Вывести минимальный id 
select min(id) from students;

--29. Вывести максимальный.
select max(id)from students;

--30. Вывести количество пользователей
select max(id) as name  from students;

--31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
select id,name ,created_on from students
order by created_on;

--32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
select id,name,created_on from students
order by created_on desc;
















