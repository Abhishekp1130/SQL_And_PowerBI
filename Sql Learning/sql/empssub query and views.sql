SELECT * FROM subquery.employeess;
select avg(salary) from employeess;

select * from employeess where salary > (select avg(salary) from employeess);

SELECT first_name, last_name, salary
FROM employeess 
WHERE salary > (
    SELECT AVG(salary)
    FROM employeess
    WHERE department_id = department_id
);
create view count_of_employeess as
SELECT department_id,count(employee_id), avg(salary)  FROM subquery.employeess
group by department_id;


Delimiter &&
create procedure get_data()
begin 
	select * from subquery.employeess;
end &&
Delimiter ;

call subquery.get_data()





Delimiter &&
create procedure get_limit(in var int)
begin 
	select * from subquery.employeess limit var;
end &&
Delimiter ;

call subquery.get_limit(3)


Delimiter &&
create procedure get_sal(out var int)
begin 
	select max(salary) into var from subquery.employeess;
end &&
Delimiter ;

call subquery.get_sal(@m);
select @m;



Delimiter &&
create procedure get_ol(inout var int)
begin 
	select salary from subquery.employeess where employee_id = var;
end &&
Delimiter 

set @m = 1 ;
call subquery.get_ol(@m);
select @m;