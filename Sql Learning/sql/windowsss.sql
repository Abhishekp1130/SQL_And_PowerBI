SELECT * FROM windows.window;
select first_name, last_name, sales , sum(employee_id)
over (partition by department_id order by sales) from  windows.window; 


select *, row_number()
over (partition by employee_id) from windows.window;

select *, rank()
over(partition by employee_id order by sales) from windows.window;

select *, dense_rank()
over(partition by employee_id order by sales) from windows.window;