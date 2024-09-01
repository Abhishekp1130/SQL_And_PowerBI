select * from demo1.data_analytics;
select date from demo1.data_analytics;
select subcategory from demo1.data_analytics where category = "food, F";
select initials, Date, subcategory from demo1.data_analytics where category = "food, F" and Price <= 500;
select initials, Date, subcategory from demo1.data_analytics where category = "food, F" or Price = 300;
select initials, Date, subcategory from demo1.data_analytics where not category = "food, F";


