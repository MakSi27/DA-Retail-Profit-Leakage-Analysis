SELECT * FROM retail_sales LIMIT 10;

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'retail_sales'
ORDER BY ordinal_position;

SELECT column_name , data_type , is_nullable
FROM information_schema.columns
WHERE table_name = 'retail_sales'
ORDER BY ordinal_position;

SELECT
COUNT(*) AS count,
AVG(Sales) AS avg_sales,
MIN(Sales) AS min_sales,
MAX(Sales)  AS max_sales,
AVG(Quantity) AS avg_quantity,
MIN(Quantity) AS min_quantity,
MAX(Quantity) AS max_quantity,
AVG(Discount) AS avg_discount,
MIN(Discount) AS min_discount,
MAX(Discount) AS max_discount,
AVG(Profit) AS avg_profit,
MIN(Profit) AS min_profit,
MAX(Profit) AS max_profit
FROM retail_sales;

SELECT COUNT(*) AS total_rows FROM retail_sales;
SELECT COUNT(*) AS total_columns
FROM information_schema.columns
WHERE table_name = 'retail_sales';



-- Total Sales
SELECT ROUND(SUM(Sales), 2) AS total_sales FROM retail_sales;

-- Total Profit
SELECT ROUND(SUM(Profit), 2) AS total_profit FROM retail_sales;

-- Sales by Category
SELECT Category, ROUND(SUM(Sales), 2) AS total_sales
FROM retail_sales
GROUP BY Category
ORDER BY total_sales DESC;

-- Profit by Region
SELECT Region, SUM(Profit) AS total_profit
FROM retail_sales
GROUP BY Region
ORDER BY total_profit DESC;
