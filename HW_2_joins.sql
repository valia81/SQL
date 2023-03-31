select * from salary1;
select * from employees;
select * from employee_salary1;
select * from roles1;
select * from roles1_employee;

--1.Вывести всех работников(emloyees) чьи зарплаты есть в базе(employee_salary), вместе с зарплатами(salary).
select employee_name,monthly_salary1 
from employees
inner join employee_salary1 
on employee_salary1.employee_id = employees.id 
inner join salary1 
on salary1.id=employee_salary1.salary1_id;


--2. Вывести всех работников(employees)у которых ЗП(employee_salary) меньше 2000(salary)
select employee_name,monthly_salary1
from employees 
inner join employee_salary1 
on employee_salary1.employee_id = employees.id
inner join salary1
on employee_salary1.salary1_id =salary1.id
where monthly_salary1<2000;

--3. Вывести все зарплатные позиции(salary), но работник(employees) по ним не назначен.
-- (ЗП есть(employee_salary), но не понятно кто её получает.)
select salary1.monthly_salary1,employees.employee_name
from salary1
left join employee_salary1
on salary1.monthly_salary1= employee_salary1.salary1_id
left join employees
on employee_salary1.salary1_id = employees.id


--4. Вывести все зарплатные позиции(salary)  меньше 2000 ,но работник (employees)по ним не назначен.
--(ЗП есть(employee_salary), но не понятно кто её получает.)
 select salary1.monthly_salary1,employees.employee_name
from salary1 
left join employee_salary1 
on salary1.monthly_salary1 = employee_salary1.salary1_id
left join employees 
on employee_salary1.salary1_id = employees.id
where monthly_salary1 < 2000;

--5. Найти всех работников(employees) кому не начислена ЗП(employee_salary).
select employees.employee_name,employee_salary1.salary1_id
from employees
left join employee_salary1
on employees.id = employee_salary1.salary1_id
where salary1_id is null

--6.Вывести всех работников(employees) с названиями их должности.(roles1)
select employees.employee_name,roles1.role_name
from employees 
inner join roles1
on employees.id =roles1.id

--7. Вывести имена и должность только Java разработчиков.
select employees.employee_name,roles1.role_name                 
from employees
left join roles1
on employees.id = roles1.id
WHERE  role_name like '%Java%'

--8. Вывести имена(employees) и должность(roles) только Python разработчиков.
select employees.employee_name,roles1.role_name
from employees
join roles1
on employees.id = roles1.id
where role_name like '%Python%';

--9. Вывести имена и должность всех QA инженеров.
select employees.employee_name,roles1.role_name 
from employees 
join roles1
on employees.id = roles1.id
where role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.
select employees.employee_name,roles1.role_name 
from employees
join roles1
on employees.id = roles1.id
where role_name like '%Manual QA%';

--11. Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles1.role_name 
from employees
join roles1 
on employees.id = roles1.id 
where role_name like '%Automation QA%';

--12. Вывести имена(employees) и зарплаты(salary1) Junior(roles1) специалистов(roles1_employee)
select employees.employee_name, salary1.monthly_salary1, roles1.role_name 
from salary1
join employee_salary1
on employee_salary1.salary1_id= salary1.id
 join employees
on employee_salary1.employee_id = employees.id
 join roles1_employee
on employees.id=roles1_employee.employees_id
 join roles1
on roles1_employee.roles1_id = roles1.id
where role_name like '%Junior%';

--13. Вывести имена(employees) и зарплаты(salary1) Middle(roles1) специалистов(roles1_employee)
select employees.employee_name, salary1.monthly_salary1, roles1.role_name 
from salary1
join employee_salary1 
on salary1.id = employee_salary1.salary1_id 
join employees
on employees.id = employee_salary1.employee_id 
join roles1_employee
on roles1_employee.employees_id = employees.id 
join roles1 
on roles1.id = roles1_employee.roles1_id 
where role_name like'%Middle%';


--14. Вывести имена и зарплаты Senior специалистов
select employees.employee_name, salary1.monthly_salary1, roles1.role_name 
from salary1
join employee_salary1 
on salary1.id = employee_salary1.salary1_id 
join employees 
on employees.id = employee_salary1.employee_id 
join roles1_employee
on employees.id = roles1_employee.employees_id 
join roles1 
on roles1.id = roles1_employee.roles1_id
where role_name like '%Senior%';

--15. Вывести зарплаты(salary1) Java(roles1) разработчиков(roles1_employee)
select salary1.monthly_salary1,roles1.role_name
from roles1
join roles1_employee 
on roles1.id = roles1_employee.roles1_id
join employee_salary1 
on roles1_employee.employees_id = employee_salary1.employee_id 
join salary1 
on salary1.id = employee_salary1.salary1_id 
where role_name like '%Java developer%';

--16. Вывести зарплаты(salary1) Python(roles1) разработчиков(roles1_employee)
select salary1.monthly_salary1, roles1.role_name
from roles1 
join roles1_employee 
on roles1.id = roles1_employee.roles1_id 
join employee_salary1 
on roles1_employee.employees_id = employee_salary1.employee_id
join salary1 
on employee_salary1.id = salary1.id
where role_name like '%Python developer%';

--17. Вывести имена(employees) и зарплаты(salary1) Junior Python(roles1) разработчиков(roles1_employee)
select employees.employee_name,  salary1.monthly_salary1, roles1.role_name 
from salary1 
join employee_salary1
on salary1.id = employee_salary1.employee_id
join employees 
on employee_salary1.id= employees.id
join roles1_employee 
on employee_salary1.id =roles1_employee.id
join roles1 
on roles1_employee.id = roles1.id
where role_name like '%Junior Python developer%'


--18. Вывести имена(emploees) и зарплаты(salary1) Middle JS (roles1)разработчиков(roles1_employee)
select employees.employee_name, salary1.monthly_salary1, roles1.role_name 
from salary1 
join employee_salary1
on salary1.id = employee_salary1.employee_id
join employees
on employee_salary1.id = employees.id 
join roles1_employee 
on employee_salary1.id = roles1_employee.id
join roles1
on roles1_employee.id = roles1.id
where role_name like '%Middle JavaScript developer%'

--19. Вывести имена(employees) и зарплаты(Salary1)Senior Java(roles1) разработчиков(roles1_employee)
select  salary1.monthly_salary1, roles1.role_name
from salary1
join employee_salary1 
on salary1.id = employee_salary1.salary1_id
join roles1_employee
on employee_salary1.id = roles1_employee.id 
join roles1 
on roles1_employee.id = roles1.id 
where role_name like '%Senior Java%';

--20. Вывести зарплаты(salary1) Junior QA(roles1) инженеров(roles1_employee)
select salary1.monthly_salary1, roles1.role_name 
from salary1 
join employee_salary1
on salary1.id = employee_salary1.salary1_id
join roles1_employee
on employee_salary1.employee_id  = roles1_employee.employees_id 
join roles1 
on roles1_employee.roles1_id = roles1.id 
where role_name like '%Junior%QA engineer%';

--21. Вывести среднюю зарплату(salary1) всех Junior(roles1) специалистов(roles1_employee)
select avg(monthly_salary1) --roles1.role_name 
from salary1 
join employee_salary1 
on salary1.id = employee_salary1.salary1_id
join roles1_employee 
on employee_salary1.employee_id   = roles1_employee.employees_id
join roles1 
on roles1_employee.roles1_id = roles1.id
where  role_name like   '%Junior%';


--22. Вывести сумму зарплат(salary1) JS разработчиков(roles1_employee)
select salary1.monthly_salary1, roles1.role_name 
from salary1 
join employee_salary1 
on salary1.id = employee_salary1.salary1_id 
join employees
on employee_salary1.employee_id = employees.id 
join roles1_employee
on employees.id = roles1_employee.roles1_id 
join roles1 
on roles1_employee.roles1_id  = roles1.id
where role_name like '%JavaScript developer%'


--23. Вывести минимальную ЗП(salary1) QA инженеров
select min(salary1.monthly_salary1)
from salary1 
join employee_salary1 
on salary1.id = employee_salary1.salary1_id
join employees 
on employee_salary1.employee_id = employees.id
join roles1_employee 
on employees.id = roles1_employee.employees_id 
join roles1 
on roles1_employee.roles1_id = roles1.id 
where role_name like '%QA engineer%';

--24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary1)
from salary1
join employee_salary1 
on salary1.id = employee_salary1.salary1_id
join employees 
on employee_salary1.employee_id = employees.id
join roles1_employee
on employees.id = roles1_employee.employees_id
join roles1 
on roles1_employee.roles1_id = roles1.id 
where role_name like '%QA engineer%'

--25. Вывести количество QA(roles1) инженеров(roles1_employee)
select employees.employee_name, roles1.role_name 
from employees 
join roles1_employee
on employees.id   = roles1_employee.employees_id 
join roles1
on roles1_employee.roles1_id = roles1.id
where role_name like '%QA engineer%';

--26. Вывести количество Middle(roles1) специалистов.(roles1_employee)
select employees.employee_name , roles1.role_name
from employees
join roles1_employee 
on employees.id = roles1_employee.employees_id 
join roles1 
on roles1_employee.roles1_id = roles1.id
where role_name like '%Middle%';

--27. Вывести количество разработчиков
select employees.employee_name, roles1.role_name
from employees 
join roles1_employee 
on employees.id = roles1_employee.employees_id
join roles1 
on roles1_employee.roles1_id = roles1.id
where role_name like '%developer%'

--28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(salary1.monthly_salary1)
from salary1 
join employee_salary1 
on salary1.id = employee_salary1.salary1_id
join employees 
on employee_salary1.employee_id = employees.id
join roles1_employee 
on employees.id = roles1_employee.roles1_id
join roles1
on roles1_employee.roles1_id = roles1.id
where role_name  like '%developer%'

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.employee_name ,salary1.monthly_salary1, roles1.role_name
from salary1
join employee_salary1
on salary1.id = employee_salary1.salary1_id 
join employees 
on employee_salary1.employee_id = employees.id
join roles1_employee
on roles1_employee.employees_id  = employees.id
join roles1 
on roles1_employee.roles1_id =roles1.id
order by salary1

--30. Вывести имена, должности и ЗП всех специалистов 
--по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.employee_name, salary1.monthly_salary1,  roles1.role_name
from salary1 
join employee_salary1
on employee_salary1.salary1_id = salary1.id
join employees
on employee_salary1.employee_id = employees.id 
join roles1_employee
on roles1_employee.employees_id = employees.id 
join roles1 
on roles1_employee.roles1_id = roles1.id 
where monthly_salary1 between '1700' and '2300';

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию 
--у специалистов у которых ЗП меньше 2300
select employees.employee_name, salary1.monthly_salary1 
from salary1 
join employee_salary1 
on employee_salary1. salary1_id = salary1.id 
join employees 
on employees.id = employee_salary1.employee_id 
join roles1_employee
on roles1_employee.employees_id = employees.id 
join roles1 
on roles1_employee.roles1_id = roles1.id
where monthly_salary1 <'2300';

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию 
--у специалистов у которых ЗП равна 1100, 1500, 2000
select employees.employee_name, salary1.monthly_salary1, roles1.role_name 
from salary1 
join employee_salary1 
on employee_salary1.salary1_id = salary1.id
join employees 
on employee_salary1.employee_id = employees.id 
join roles1_employee
on roles1_employee.employees_id = employees.id 
join roles1 
on roles1_employee.roles1_id = roles1.id 
where monthly_salary1 in (1100 ,1500,2000)
order by salary1.monthly_salary1 asc;







