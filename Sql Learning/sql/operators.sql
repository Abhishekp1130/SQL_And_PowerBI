SELECT * FROM neww.employee_sample_data;
select date(Hire_Date) as dates from neww.employee_sample_data;
select time(Hire_Date) as dates from neww.employee_sample_data;
select timediff('Hire_Date', 'Exit Date') as dates from neww.employee_sample_data;
select day(Hire_Date) as days from neww.employee_sample_data;
select dayname(Hire_Date) as days from neww.employee_sample_data;
select month(Hire_Date) as days from neww.employee_sample_data;
select monthname(Hire_Date) as days from neww.employee_sample_data;
select year(Hire_Date) as days from neww.employee_sample_data;
select hour(Hire_Date) as hours from neww.employee_sample_data;
select minute(Hire_Date) as minutes from neww.employee_sample_data;
select Business_Unit, Age,
case
	when Age > 50 and Age < 60 then "about to retire"
    else "time is left"
end as new_colm
from neww.employee_sample_data;
SELECT * FROM neww.employee_sample_data;
select Business_Unit, Age,
case
	when Age >= 25 and Age < 35 then "Right aged"
    when Age >= 35 and Age < 45 then "Middle aged"
    else "over aged"
end as aged_colm
from neww.employee_sample_data;
SELECT * FROM neww.employee_sample_data;
select Gender, count(EEID) from neww.employee_sample_data group by Gender order by count(EEID) asc;
select Department, count(EEID) from neww.employee_sample_data group by Department having count(EEID) > 100;


