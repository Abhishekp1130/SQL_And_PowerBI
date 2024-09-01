create schema project1;
use project1;
select * from mobile;
select Phone_name , Price from mobile;

-- to get the price of 5 most expensive phones
select*from mobile
order by price desc
limit 5;

-- 5 most cheapest phones
select*from mobile
order by price asc
limit 5;

-- Top 5 Samsung Phones with price and all features
select *from mobile where brands = "samsung"
Order by price desc
limit 5;


-- list of top 5 android phones with list of android phones
select*from mobile where Operating_System_Type = "Android"
order by Price desc
limit 5;


select*from mobile where Operating_System_Type = "Android"
order by Price asc
limit 5;

select*from mobile where Operating_System_Type = "IOS"
order by Price desc
limit 5;

select*from mobile where Operating_System_Type = "ios"
order by Price asc
limit 5;


-- top 5 phone with 5g support
select * from mobile where 5G_Availability = "Yes"
order by price desc 
limit 5;

-- Total price of all mobile to be found with brand names
select brands, sum(price) as Total_price from mobile group by brands;


select* from mobile;

-- Average on Brands and price
SELECT Brands, AVG(Price) AS average_price
FROM mobile
GROUP BY Brands
ORDER BY average_price DESC;

 