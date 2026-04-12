SELECT * FROM retail_processed_data LIMIT 10;

-- Row Count
select count(*) from retail_processed_data;

-----------------------------------Checking Dataset Structure-------------------------------------------------------

select * from retail_processed_data limit 10;

------------------------------------------Total Buisness Overview--------------------------------------------------
--# Total Sales
select sum(Sales) as total_sales from retail_processed_data;

--# Total Profit
select sum(Profit) as total_profit from retail_processed_data;

--# Average Profit Margin
select avg(Profit_Margin) as avg_Profit_Margin
from retail_processed_data;

----------------------------------------Sales & Profit by Region--------------------------------------------------
select
    Region,
    sum(Sales) as total_Sales,
    sum(Profit) as total_Profit
from retail_processed_data
group by
    1
order by 3 desc;

--------------------------------------- Category Performance------------------------------------------------------
select
    Category,
    sum(Sales) as total_Sales,
    sum(Profit) as total_Profit
from retail_processed_data
group by
    1
order by 3 desc;

---------------------------------------Sub-Category Profit Analysis-------------------------------------------------
select Sub_Category, sum(Profit) as total_Profit
from retail_processed_data
group by
    1
order by 2;

-------------------------------------- High Sales but Low Profit---------------------------------------------------
select Product_Name, Sales, Profit
from retail_processed_data
where
    Sales > 1000
    and Profit < 50
order by Profit;

---------------------------------------Top 10 Customers-----------------------------------------------------------
select Customer_Name, Sum(Sales) as total_Sales
from retail_processed_data
group by
    1
order by 2 desc
limit 10;

-------------------------------------Monthly Sales Analysis------------------------------------------------------
select Month, sum(Sales) as Monthly_Sales
from retail_processed_data
group by
    1
order by 1;

---------------------------------------Region Ranking------------------------------------------------------------
select
    Region,
    sum(Profit) as total_Profit,
    rank() over (
        order by sum(Profit) desc
    ) as Profit_rank
from retail_processed_data
group by
    1;

----------------------------------------Loss Making Products-----------------------------------------------------
select * from retail_processed_data where Profit < 0;

---------------------------------------Order Per Segment-------------------------------------------------------

select Segment, count(Order_ID) as total_Orders
from retail_processed_data
group by
    1
order by 2 desc;

---------------------------------------Average Discount By Category----------------------------------------------
select Category, Avg(Discount) as Avg_Discount
from retail_processed_data
group by
    1
order by 2 desc;

--------------------------------------Yearly Sales Growth--------------------------------------------------------
select Year, Sum(Sales) as total_Sales
from retail_processed_data
group by
    1
order by 1;

------------------------------------Top 10 Products BY Profit-----------------------------------------------------
select Product_Name, sum(Profit) as total_Profit
from retail_processed_data
group by
    1
order by 2 desc
limit 10;

----------------------------------- Negative Profit Sub-Category------------------------------------------------
select Sub_Category, sum(Profit) as total_Profit
from retail_processed_data
group by
    1
having
    sum(Profit) < 0
order by 2;