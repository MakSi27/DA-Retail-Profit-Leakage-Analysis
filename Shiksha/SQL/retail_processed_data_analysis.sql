SELECT * FROM retail_processed_data LIMIT 10;

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'retail_processed_data'
ORDER BY ordinal_position;

SELECT column_name , data_type , is_nullable
FROM information_schema.columns
WHERE table_name = 'retail_processed_data'
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
FROM retail_processed_data;

SELECT COUNT(*) AS total_rows FROM retail_processed_data;
SELECT COUNT(*) AS total_columns
FROM information_schema.columns
WHERE table_name = 'retail_processed_data';

--Total Sales
SELECT ROUND(SUM(Sales)::NUMERIC, 2) AS total_sales 
FROM retail_processed_data;

    -- Total Profit
    SELECT ROUND(SUM(Profit)::NUMERIC, 2) AS total_profit FROM retail_processed_data;

-- Sales by Category
SELECT Category, ROUND(SUM(Sales)::NUMERIC, 2) AS total_sales
FROM retail_processed_data
GROUP BY Category
ORDER BY total_sales DESC;

-- Profit by Region
SELECT Region, SUM(Profit) AS total_profit
FROM retail_processed_data
GROUP BY Region
ORDER BY total_profit DESC;
