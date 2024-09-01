SELECT * FROM sales.customers;
SELECT count(*) FROM sales.customers;


SELECT * FROM sales.date;
SELECT sales.transactions.*, sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date WHERE sales.date.year=2020;
SELECT sales.transactions.*, sales.date.* FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date WHERE sales.date.year=2019;
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date WHERE sales.date.year=2020;
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date WHERE sales.date.year=2019;
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date 
WHERE sales.date.year=2020 and sales.transactions.market_code="Mark001";
SELECT DISTINCT product_code FROM sales.transactions where market_code = "Mark006";

SELECT * FROM sales.transactions;
SELECT count(*) FROM sales.transactions;
SELECT * FROM sales.transactions LIMIT 5;
SELECT * FROM sales.transactions WHERE market_code = "Mark001";
SELECT count(*) FROM sales.transactions WHERE market_code = "Mark001";
SELECT * FROM sales.transactions WHERE currency = "USD";

SELECT * FROM sales.markets;

SELECT * FROM sales.products;




-- Total Sales:
SELECT SUM(sales_amount) AS total_sales
FROM sales.transactions;

-- Average Sales Per Customer:
SELECT customer_code, AVG(sales_amount) AS avg_sales
FROM sales.transactions
GROUP BY customer_code;

-- Sales Growth Over Time:
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(sales_amount) AS monthly_sales,
    (SUM(sales_amount) - LAG(SUM(sales_amount), 1) OVER (ORDER BY YEAR(order_date), MONTH(order_date))) / LAG(SUM(sales_amount), 1) OVER (ORDER BY YEAR(order_date), MONTH(order_date)) * 100 AS sales_growth
FROM sales.transactions
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

-- Top-Selling Products:
SELECT product_code, SUM(sales_amount) AS total_sales
FROM sales.transactions
GROUP BY product_code
ORDER BY total_sales DESC
LIMIT 5;


-- Customer Segmentation (High Spenders):
SELECT customer_code, SUM(sales_amount) AS total_spent
FROM sales.transactions
GROUP BY customer_code
HAVING SUM(sales_amount) > 10000;  -- Example threshold for high spenders

-- profit Margins:
SELECT
    product_code,
    SUM(sales_amount) - SUM(cost_price) AS total_profit,
    (SUM(sales_amount) - SUM(cost_price)) / SUM(sales_amount) * 100 AS profit_margin
FROM sales.transactions
GROUP BY product_code
ORDER BY total_profit DESC;
