SELECT * FROM joins.customers;
select customers.Email,sum(orders.Amount) from customers 
inner join orders 
on customers.CustomerID = orders.CustomerID
group by customers.Email;

select customers.Email,orders.Amount 
from customers right join orders
on customers.CustomerID = orders.CustomerID
order by Amount asc;
select customers.Email,orders.Amount 
from customers left join orders
on customers.CustomerID = orders.CustomerID
order by Amount asc;
select * from  customers cross join orders
on customers.CustomerID = orders.CustomerID;
select customers.CustomerID, customers.FirstName, customers.Email,orders.OrderID,orders.OrderDate, orders.Amount from  customers cross join orders
on customers.CustomerID = orders.CustomerID;