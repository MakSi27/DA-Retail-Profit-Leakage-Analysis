create table RETAIL_PROFIT_Leakage(
Row_ID int,
Order_ID varchar(20),
Order_Date text,
Ship_Date text,
Ship_Mode varchar(20),
Customer_ID varchar(20),
Customer_Name varchar(50),
Segment varchar(20),
Country vrachar(20),
City varchar(20),
State varchar(30),
Postal_Code bigint,
Region varchar(20),
Product_ID varchar(30),
Category varchar(50),
Sub_Category varchar(50),
Product_Name varchar(200),
Sales NUMERIC(10,4),
Quantity int,
Discount NUMERIC(4,2),
profit NUMERIC(10,4),
Profit_Margin NUMERIC(10,4),
Loss_Flag boolean,
Year int,
Month int
);

SELECT *
FROM retail_profit_leakage
LIMIT 10;

--row count
SELECT count(*) FROM retail_profit_leakage;

--converting order_date and ship_date into date column
ALTER TABLE retail_profit_leakage
ALTER COLUMN order_date TYPE DATE
USING TO_DATE(ordedr_date,'MM/DD/YYYY');

ALTER TABLE retail_profit_leakage
ALTER COLUMN ship_date TYPE DATE
USING TO_DATE(ship_date,'MM/DD/YYYY');

--checking dataset structure--

SELECT * FROM retail_profit_leakage
LIMIT 10;


--Total Business overview--
--#TOTAL SALES
SELECT sum(Sales) as total_sales FROM retail_profit_leakage;

--#TOTAL PROFIT
SELECT sum(Profit) as total_profit FROM retail_profit_leakage;

--#AVERAGE PROFIT MARGIN
SELECT avg(Profit_Margin) as avg_profit_margin FROM retail_profit_leakage;

--Sales & Profit by Region--
SELECT Region , sum(Sales) as total_sales  sum(Profit) as total_profit FROM retail_profit_leakage
GROUP BY 1
ORDER BY 3 DESC;



--Category performance--
SELECT Category , sum(Sales) as total_sales , sum(Profit) as total_profit FROM retail_profit_leakage
GROUP BY 1
ORDER BY 3 DESC;

--Sub-Category Profit Analysis
SELECT Sub_Category , sum(Sales) as total_sales FROM retail_profit_leakage
GROUP BY 1
ORDER BY 2;

--High sales but low profit--
SELECT Product_Name , Sales , Profit FROM retail_profit_leakage
WHERE Sales > 1000 AND Profit < 50
ORDER BY Profit;

--Top 10 Customers--
SELECT Customer_Name , sum(Sales) as total_sales FROM retail_profit_leakage
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

--Monthly Sales Analysis--
SELECT Month , sum(Sales) as Monthly_Sales FROM retail_profit_leakage
GROUP BY 1
ORDER BY 1;

--Region Ranking--
SELECT Region , sum(Profit) as total_profit , rank() over(ORDER BY sum(Proift) DESC) as Profit_Rank FROM retail_profit_leakage
GROUP BY 1;

--Loss Making Products--
SELECT * FROM retail_profit_leakage
WHERE Profit < 0;

--Order Per Segment--
SELECT Segment , count(Order_ID) as total_Orders FROM retail_profit_leakage
GROUP BY 1
ORDER BY 2 DESC;

--Average Discount by Category--
SELECT Category , avg(Discount) as Avg_Discount FROM retail_profit_leakage
GROUP BY 1
ORDER BY 2 DESC;

--Yearly Sales Growth--
SELECT Year , sum(Sales) as total_sales FROM retail_profit_leakage
GROUP BY 1
ORDER BY 1;

--Top 10 Products by Profit--
SELECT Product_Name , sum(profit) as total_profit FROM retail_profit_leakage
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

--Negative Profit Sub-Category--
SELECT Sub_Category , sum(profit) as total_profit FROM retail_profit_leakage
GROUP BY 1
HAVING sum(profit) < 0
ORDER BY 2;


