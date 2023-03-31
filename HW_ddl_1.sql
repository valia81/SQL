create table employees(
  id serial primary key,
  employee_name varchar(50) not null
);

select * from employees;

insert into employees(employee_name)
values('anna'),
       ('dana'),
       ('inna'),
       ('sonia'),
       ('pavlik'),
       ('olinda'),
       ('ira'),
       ('ilias'),
       ('valea'),
       ('irina'),
       ('igori'),
       ('oleg'),
       ('nastea'),
       ('damian'),
       ('denis'),
       ('viktor'),
       ('grigori'),
       ('andrei'),
       ('tasia'),
       ('hristo'), 
       ('nikita'),
       ('maxim'),
       ('galea'),
       ('petia'),
       ('maria'),
       ('alex'),
       ('tania'),
       ('ghena'),
       ('luiza'),
       ('gleb'),
       ('rima'),
       ('iura'),
       ('alesha'),
       ('lena'),
       ('vadim'),
       ('anghelos'),
       ('nikolas'),
       ('ianis'),
       ('iulia'),
       ('carolina'),
       ('serghei'),
       ('valentin'),
       ('konstantina'),
       ('konstantin'),
       ('nikoleta'),
       ('nikita'),
       ('maxim'),
       ('galea'),
       ('petia'),
       ('maria'),
       ('alex'),
       ('tania'),
       ('ghena'),
       ('luiza'),
       ('gleb'),
       ('rima'),
       ('iura'),
       ('alesha'),
       ('lena'),
       ('vadim'),
       ('anghelos'),
       ('nikolas'),
       ('ianis'),
       ('iulia'),
       ('carolina'),
       ('serghei'),
       ('valentin'),
       ('konstantina'),
       ('konstantin'),
       ('nikoleta');


create table salary1(
   id serial primary key,
   monthly_salary1 int not null
);

select * from salary1;

insert into salary1(monthly_salary1)
values(1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
drop table salary1;

create table employee_salary1(
     id Serial primary key,
     employee_id Int not null unique,
     salary1_id Int not null
);
drop table employee_salary1;



select * from employee_salary1;
select * from salary1;
select * from employees;


insert into employee_salary1(employee_id,salary1_id)
values(2,5),
       (6,3),
       (4,2),
       (10,8),
       (12,9),
       (18,1),
       (32,4),
       (13,6),
       (9,7),
       (21,11),
       (3,5),
       (1,7),
       (5,13),
       (40,5),
       (23,12),
       (11,10),
       (52,2),
       (58,12),
       (34,15),
       (65,14),
       (26,8),
       (33,8),
       (16,8),
       (27,10),
       (15,15),
       (50,3),
       (17,13),
       (28,16),
       (41,9),
       (8,7),
       (71,1),
       (72,2),
       (73,3),
       (74,4),
       (75,5),
       (76,6),
       (77,7),
       (78,8),
       (79,9),
       (80,10);
       
create table roles1(
  id Serial primary key,
  role_name int not null unique,
);


alter table roles1 
alter column role_name type varchar(30)



insert into roles1(role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');
);
select * from roles1;     

 
create table roles1_employee(
    id Serial primary key,
    employees_id Int not null unique,
    roles1_id Int not null,
    foreign key (employees_id)
         references employees(id),
    foreign key (roles1_id)
         references roles1(id)
);

select * from roles1_employee;

insert into roles1_employee(employees_id,roles1_id)
values (7,2),
      (20,4),
      (3,9),
      (5,13),
      (23,4),
      (11,2),
      (10,9),
      (22,13),
      (21,3),
      (34,4),
      (6,7),
      (12,5),
      (13,6),
      (14,7),
      (15,8),
      (16,9),
      (17,10),
      (18,11),
      (19,12),
      (24,13),
      (25,14),
      (26,15),
      (27,16),
      (28,17),
      (29,18),
      (30,19),
      (31,20),
      (32,1),
      (33,2),
      (69,3),
      (35,4),
      (36,5),
      (37,6),
      (38,7),
      (39,8),
      (40,9),
      (50,10),
      (51,11),
      (52,12),
      (53,13);
      
      
      
      
      
      
      
      
      
      



,
       
       
       
       
       
       
       
       
       
       
       
       

