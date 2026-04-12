# SQL Analysis Results

These are the results of running `retail_processed_data_analysis.sql` against your processed dataset.

### Query
```sql
SELECT *
FROM retail_processed_data
LIMIT 10;
```

|   Row_ID | Order_ID       | Order_Date   | Ship_Date   | Ship_Mode      | Customer_ID   | Customer_Name   | Segment   | Country       | City            | State      |   Postal_Code | Region   | Product_ID      | Category        | Sub_Category   | Product_Name                                                     |   Sales |   Quantity |   Discount |    Profit |   Profit_Margin |   Loss_Flag |   Year |   Month |
|---------:|:---------------|:-------------|:------------|:---------------|:--------------|:----------------|:----------|:--------------|:----------------|:-----------|--------------:|:---------|:----------------|:----------------|:---------------|:-----------------------------------------------------------------|--------:|-----------:|-----------:|----------:|----------------:|------------:|-------:|--------:|
|        1 | CA-2016-152156 | 2016-11-08   | 2016-11-11  | Second Class   | CG-12520      | Claire Gute     | Consumer  | United States | Henderson       | Kentucky   |         42420 | South    | FUR-BO-10001798 | Furniture       | Bookcases      | Bush Somerset Collection Bookcase                                | 261.96  |          2 |       0    |   41.9136 |          0.16   |           0 |   2016 |      11 |
|        2 | CA-2016-152156 | 2016-11-08   | 2016-11-11  | Second Class   | CG-12520      | Claire Gute     | Consumer  | United States | Henderson       | Kentucky   |         42420 | South    | FUR-CH-10000454 | Furniture       | Chairs         | Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back      | 731.94  |          3 |       0    |  219.582  |          0.3    |           0 |   2016 |      11 |
|        3 | CA-2016-138688 | 2016-06-12   | 2016-06-16  | Second Class   | DV-13045      | Darrin Van Huff | Corporate | United States | Los Angeles     | California |         90036 | West     | OFF-LA-10000240 | Office Supplies | Labels         | Self-Adhesive Address Labels for Typewriters by Universal        |  14.62  |          2 |       0    |    6.8714 |          0.47   |           0 |   2016 |       6 |
|        4 | US-2015-108966 | 2015-10-11   | 2015-10-18  | Standard Class | SO-20335      | Sean O'Donnell  | Consumer  | United States | Fort Lauderdale | Florida    |         33311 | South    | FUR-TA-10000577 | Furniture       | Tables         | Bretford CR4500 Series Slim Rectangular Table                    | 957.577 |          5 |       0.45 | -383.031  |         -0.4    |           1 |   2015 |      10 |
|        5 | US-2015-108966 | 2015-10-11   | 2015-10-18  | Standard Class | SO-20335      | Sean O'Donnell  | Consumer  | United States | Fort Lauderdale | Florida    |         33311 | South    | OFF-ST-10000760 | Office Supplies | Storage        | Eldon Fold 'N Roll Cart System                                   |  22.368 |          2 |       0.2  |    2.5164 |          0.1125 |           0 |   2015 |      10 |
|        6 | CA-2014-115812 | 2014-06-09   | 2014-06-14  | Standard Class | BH-11710      | Brosina Hoffman | Consumer  | United States | Los Angeles     | California |         90032 | West     | FUR-FU-10001487 | Furniture       | Furnishings    | Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood |  48.86  |          7 |       0    |   14.1694 |          0.29   |           0 |   2014 |       6 |
|        7 | CA-2014-115812 | 2014-06-09   | 2014-06-14  | Standard Class | BH-11710      | Brosina Hoffman | Consumer  | United States | Los Angeles     | California |         90032 | West     | OFF-AR-10002833 | Office Supplies | Art            | Newell 322                                                       |   7.28  |          4 |       0    |    1.9656 |          0.27   |           0 |   2014 |       6 |
|        8 | CA-2014-115812 | 2014-06-09   | 2014-06-14  | Standard Class | BH-11710      | Brosina Hoffman | Consumer  | United States | Los Angeles     | California |         90032 | West     | TEC-PH-10002275 | Technology      | Phones         | Mitel 5320 IP Phone VoIP phone                                   | 907.152 |          6 |       0.2  |   90.7152 |          0.1    |           0 |   2014 |       6 |
|        9 | CA-2014-115812 | 2014-06-09   | 2014-06-14  | Standard Class | BH-11710      | Brosina Hoffman | Consumer  | United States | Los Angeles     | California |         90032 | West     | OFF-BI-10003910 | Office Supplies | Binders        | DXL Angle-View Binders with Locking Rings by Samsill             |  18.504 |          3 |       0.2  |    5.7825 |          0.3125 |           0 |   2014 |       6 |
|       10 | CA-2014-115812 | 2014-06-09   | 2014-06-14  | Standard Class | BH-11710      | Brosina Hoffman | Consumer  | United States | Los Angeles     | California |         90032 | West     | OFF-AP-10002892 | Office Supplies | Appliances     | Belkin F5C206VTEL 6 Outlet Surge                                 | 114.9   |          5 |       0    |   34.47   |          0.3    |           0 |   2014 |       6 |

### Query
```sql
-- Row Count 
select count(*) from retail_processed_data;
```

|   count(*) |
|-----------:|
|       9994 |

### Query
```sql
-----------------------------------Checking Dataset Structure-------------------------------------------------------

select * from retail_processed_data
limit 10;
```

|   Row_ID | Order_ID       | Order_Date   | Ship_Date   | Ship_Mode      | Customer_ID   | Customer_Name   | Segment   | Country       | City            | State      |   Postal_Code | Region   | Product_ID      | Category        | Sub_Category   | Product_Name                                                     |   Sales |   Quantity |   Discount |    Profit |   Profit_Margin |   Loss_Flag |   Year |   Month |
|---------:|:---------------|:-------------|:------------|:---------------|:--------------|:----------------|:----------|:--------------|:----------------|:-----------|--------------:|:---------|:----------------|:----------------|:---------------|:-----------------------------------------------------------------|--------:|-----------:|-----------:|----------:|----------------:|------------:|-------:|--------:|
|        1 | CA-2016-152156 | 2016-11-08   | 2016-11-11  | Second Class   | CG-12520      | Claire Gute     | Consumer  | United States | Henderson       | Kentucky   |         42420 | South    | FUR-BO-10001798 | Furniture       | Bookcases      | Bush Somerset Collection Bookcase                                | 261.96  |          2 |       0    |   41.9136 |          0.16   |           0 |   2016 |      11 |
|        2 | CA-2016-152156 | 2016-11-08   | 2016-11-11  | Second Class   | CG-12520      | Claire Gute     | Consumer  | United States | Henderson       | Kentucky   |         42420 | South    | FUR-CH-10000454 | Furniture       | Chairs         | Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back      | 731.94  |          3 |       0    |  219.582  |          0.3    |           0 |   2016 |      11 |
|        3 | CA-2016-138688 | 2016-06-12   | 2016-06-16  | Second Class   | DV-13045      | Darrin Van Huff | Corporate | United States | Los Angeles     | California |         90036 | West     | OFF-LA-10000240 | Office Supplies | Labels         | Self-Adhesive Address Labels for Typewriters by Universal        |  14.62  |          2 |       0    |    6.8714 |          0.47   |           0 |   2016 |       6 |
|        4 | US-2015-108966 | 2015-10-11   | 2015-10-18  | Standard Class | SO-20335      | Sean O'Donnell  | Consumer  | United States | Fort Lauderdale | Florida    |         33311 | South    | FUR-TA-10000577 | Furniture       | Tables         | Bretford CR4500 Series Slim Rectangular Table                    | 957.577 |          5 |       0.45 | -383.031  |         -0.4    |           1 |   2015 |      10 |
|        5 | US-2015-108966 | 2015-10-11   | 2015-10-18  | Standard Class | SO-20335      | Sean O'Donnell  | Consumer  | United States | Fort Lauderdale | Florida    |         33311 | South    | OFF-ST-10000760 | Office Supplies | Storage        | Eldon Fold 'N Roll Cart System                                   |  22.368 |          2 |       0.2  |    2.5164 |          0.1125 |           0 |   2015 |      10 |
|        6 | CA-2014-115812 | 2014-06-09   | 2014-06-14  | Standard Class | BH-11710      | Brosina Hoffman | Consumer  | United States | Los Angeles     | California |         90032 | West     | FUR-FU-10001487 | Furniture       | Furnishings    | Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood |  48.86  |          7 |       0    |   14.1694 |          0.29   |           0 |   2014 |       6 |
|        7 | CA-2014-115812 | 2014-06-09   | 2014-06-14  | Standard Class | BH-11710      | Brosina Hoffman | Consumer  | United States | Los Angeles     | California |         90032 | West     | OFF-AR-10002833 | Office Supplies | Art            | Newell 322                                                       |   7.28  |          4 |       0    |    1.9656 |          0.27   |           0 |   2014 |       6 |
|        8 | CA-2014-115812 | 2014-06-09   | 2014-06-14  | Standard Class | BH-11710      | Brosina Hoffman | Consumer  | United States | Los Angeles     | California |         90032 | West     | TEC-PH-10002275 | Technology      | Phones         | Mitel 5320 IP Phone VoIP phone                                   | 907.152 |          6 |       0.2  |   90.7152 |          0.1    |           0 |   2014 |       6 |
|        9 | CA-2014-115812 | 2014-06-09   | 2014-06-14  | Standard Class | BH-11710      | Brosina Hoffman | Consumer  | United States | Los Angeles     | California |         90032 | West     | OFF-BI-10003910 | Office Supplies | Binders        | DXL Angle-View Binders with Locking Rings by Samsill             |  18.504 |          3 |       0.2  |    5.7825 |          0.3125 |           0 |   2014 |       6 |
|       10 | CA-2014-115812 | 2014-06-09   | 2014-06-14  | Standard Class | BH-11710      | Brosina Hoffman | Consumer  | United States | Los Angeles     | California |         90032 | West     | OFF-AP-10002892 | Office Supplies | Appliances     | Belkin F5C206VTEL 6 Outlet Surge                                 | 114.9   |          5 |       0    |   34.47   |          0.3    |           0 |   2014 |       6 |

### Query
```sql
------------------------------------------Total Buisness Overview--------------------------------------------------
--# Total Sales 
select sum(Sales) as total_sales from retail_processed_data;
```

|   total_sales |
|--------------:|
|    2.2972e+06 |

### Query
```sql
--# Total Profit 
select sum(Profit) as total_profit from retail_processed_data;
```

|   total_profit |
|---------------:|
|         286397 |

### Query
```sql
--# Average Profit Margin
select avg(Profit_Margin) as avg_Profit_Margin from retail_processed_data;
```

|   avg_Profit_Margin |
|--------------------:|
|            0.120314 |

### Query
```sql
----------------------------------------Sales & Profit by Region--------------------------------------------------
select Region , sum(Sales) as total_Sales , sum(Profit) as total_Profit from retail_processed_data
group by 1 
order by 3 desc;
```

| Region   |   total_Sales |   total_Profit |
|:---------|--------------:|---------------:|
| West     |        725458 |       108418   |
| East     |        678781 |        91522.8 |
| South    |        391722 |        46749.4 |
| Central  |        501240 |        39706.4 |

### Query
```sql
--------------------------------------- Category Performance------------------------------------------------------
select Category , sum(Sales) as total_Sales , sum(Profit) as total_Profit from retail_processed_data
group by 1 
order by 3 desc;
```

| Category        |   total_Sales |   total_Profit |
|:----------------|--------------:|---------------:|
| Technology      |        836154 |       145455   |
| Office Supplies |        719047 |       122491   |
| Furniture       |        742000 |        18451.3 |

### Query
```sql
---------------------------------------Sub-Category Profit Analysis-------------------------------------------------
select Sub_Category , sum(Profit) as total_Profit from retail_processed_data
group by  1 
order by 2;
```

| Sub_Category   |   total_Profit |
|:---------------|---------------:|
| Tables         |     -17725.5   |
| Bookcases      |      -3472.56  |
| Supplies       |      -1189.1   |
| Fasteners      |        949.518 |
| Machines       |       3384.76  |
| Labels         |       5546.25  |
| Art            |       6527.79  |
| Envelopes      |       6964.18  |
| Furnishings    |      13059.1   |
| Appliances     |      18138     |
| Storage        |      21278.8   |
| Chairs         |      26590.2   |
| Binders        |      30221.8   |
| Paper          |      34053.6   |
| Accessories    |      41936.6   |
| Phones         |      44515.7   |
| Copiers        |      55617.8   |

### Query
```sql
-------------------------------------- High Sales but Low Profit---------------------------------------------------
select Product_Name , Sales , Profit from  retail_processed_data 
where Sales > 1000
and 
Profit < 50 
order by Profit;
```

| Product_Name                                                                |    Sales |   Profit |
|:----------------------------------------------------------------------------|---------:|---------:|
| Cubify CubeX 3D Printer Double Head Print                                   |  4499.98 | -6599.98 |
| Cubify CubeX 3D Printer Triple Head Print                                   |  7999.98 | -3839.99 |
| GBC DocuBind P400 Electric Binding System                                   |  2177.58 | -3701.89 |
| Lexmark MX611dhe Monochrome Laser Printer                                   |  2549.99 | -3399.98 |
| Ibico EPK-21 Electric Binding System                                        |  1889.99 | -2929.48 |
| Cubify CubeX 3D Printer Double Head Print                                   |  1799.99 | -2639.99 |
| Fellowes PB500 Electric Punch Plastic Comb Binding Machine with Manual Bind |  1525.19 | -2287.78 |
| Chromcraft Bull-Nose Wood Oval Conference Tables & Bases                    |  4297.64 | -1862.31 |
| GBC DocuBind P400 Electric Binding System                                   |  1088.79 | -1850.95 |
| Cisco TelePresence System EX90 Videoconferencing Unit                       | 22638.5  | -1811.08 |
| Riverside Palais Royal Lawyers Bookcase, Royale Cherry Finish               |  3083.43 | -1665.05 |
| Lexmark MX611dhe Monochrome Laser Printer                                   |  8159.95 | -1359.99 |
| GBC DocuBind P400 Electric Binding System                                   |  1633.19 | -1306.55 |
| GBC DocuBind TL300 Electric Binding System                                  |  1614.58 | -1237.85 |
| GBC Ibimaster 500 Manual ProClick Binding System                            |  1598.06 | -1065.37 |

*(Showing top 15 rows)*

### Query
```sql
---------------------------------------Top 10 Customers-----------------------------------------------------------
select Customer_Name  , Sum(Sales) as total_Sales from retail_processed_data
group by 1 
order by 2 desc 
limit 10;
```

| Customer_Name      |   total_Sales |
|:-------------------|--------------:|
| Sean Miller        |       25043   |
| Tamara Chand       |       19052.2 |
| Raymond Buch       |       15117.3 |
| Tom Ashbrook       |       14595.6 |
| Adrian Barton      |       14473.6 |
| Ken Lonsdale       |       14175.2 |
| Sanjit Chand       |       14142.3 |
| Hunter Lopez       |       12873.3 |
| Sanjit Engle       |       12209.4 |
| Christopher Conant |       12129.1 |

### Query
```sql
-------------------------------------Monthly Sales Analysis------------------------------------------------------
select Month  , sum(Sales) as Monthly_Sales from retail_processed_data
group by 1 
order by 1;
```

|   Month |   Monthly_Sales |
|--------:|----------------:|
|       1 |         94924.8 |
|       2 |         59751.3 |
|       3 |        205005   |
|       4 |        137762   |
|       5 |        155029   |
|       6 |        152719   |
|       7 |        147238   |
|       8 |        159044   |
|       9 |        307650   |
|      10 |        200323   |
|      11 |        352461   |
|      12 |        325294   |

### Query
```sql
---------------------------------------Region Ranking------------------------------------------------------------
select Region , sum(Profit) as total_Profit  ,rank() over(order by sum(Profit) desc ) as Profit_rank 
from retail_processed_data
group by 1;
```

| Region   |   total_Profit |   Profit_rank |
|:---------|---------------:|--------------:|
| West     |       108418   |             1 |
| East     |        91522.8 |             2 |
| South    |        46749.4 |             3 |
| Central  |        39706.4 |             4 |

### Query
```sql
----------------------------------------Loss Making Products-----------------------------------------------------
select * from retail_processed_data
where Profit <0;
```

|   Row_ID | Order_ID       | Order_Date   | Ship_Date   | Ship_Mode      | Customer_ID   | Customer_Name   | Segment     | Country       | City            | State        |   Postal_Code | Region   | Product_ID      | Category        | Sub_Category   | Product_Name                                                                 |    Sales |   Quantity |   Discount |     Profit |   Profit_Margin |   Loss_Flag |   Year |   Month |
|---------:|:---------------|:-------------|:------------|:---------------|:--------------|:----------------|:------------|:--------------|:----------------|:-------------|--------------:|:---------|:----------------|:----------------|:---------------|:-----------------------------------------------------------------------------|---------:|-----------:|-----------:|-----------:|----------------:|------------:|-------:|--------:|
|        4 | US-2015-108966 | 2015-10-11   | 2015-10-18  | Standard Class | SO-20335      | Sean O'Donnell  | Consumer    | United States | Fort Lauderdale | Florida      |         33311 | South    | FUR-TA-10000577 | Furniture       | Tables         | Bretford CR4500 Series Slim Rectangular Table                                |  957.577 |          5 |       0.45 |  -383.031  |         -0.4    |           1 |   2015 |      10 |
|       15 | US-2015-118983 | 2015-11-22   | 2015-11-26  | Standard Class | HP-14815      | Harold Pawlan   | Home Office | United States | Fort Worth      | Texas        |         76106 | Central  | OFF-AP-10002311 | Office Supplies | Appliances     | Holmes Replacement Filter for HEPA Air Cleaner, Very Large Room, HEPA Filter |   68.81  |          5 |       0.8  |  -123.858  |         -1.8    |           1 |   2015 |      11 |
|       16 | US-2015-118983 | 2015-11-22   | 2015-11-26  | Standard Class | HP-14815      | Harold Pawlan   | Home Office | United States | Fort Worth      | Texas        |         76106 | Central  | OFF-BI-10000756 | Office Supplies | Binders        | Storex DuraTech Recycled Plastic Frosted Binders                             |    2.544 |          3 |       0.8  |    -3.816  |         -1.5    |           1 |   2015 |      11 |
|       24 | US-2017-156909 | 2017-07-16   | 2017-07-18  | Second Class   | SF-20065      | Sandra Flanagan | Consumer    | United States | Philadelphia    | Pennsylvania |         19140 | East     | FUR-CH-10002774 | Furniture       | Chairs         | Global Deluxe Stacking Chair, Gray                                           |   71.372 |          2 |       0.3  |    -1.0196 |         -0.0143 |           1 |   2017 |       7 |
|       28 | US-2015-150630 | 2015-09-17   | 2015-09-21  | Standard Class | TB-21520      | Tracy Blumstein | Consumer    | United States | Philadelphia    | Pennsylvania |         19140 | East     | FUR-BO-10004834 | Furniture       | Bookcases      | Riverside Palais Royal Lawyers Bookcase, Royale Cherry Finish                | 3083.43  |          7 |       0.5  | -1665.05   |         -0.54   |           1 |   2015 |       9 |
|       29 | US-2015-150630 | 2015-09-17   | 2015-09-21  | Standard Class | TB-21520      | Tracy Blumstein | Consumer    | United States | Philadelphia    | Pennsylvania |         19140 | East     | OFF-BI-10000474 | Office Supplies | Binders        | Avery Recycled Flexi-View Covers for Binding Systems                         |    9.618 |          2 |       0.7  |    -7.0532 |         -0.7333 |           1 |   2015 |       9 |
|       33 | US-2015-150630 | 2015-09-17   | 2015-09-21  | Standard Class | TB-21520      | Tracy Blumstein | Consumer    | United States | Philadelphia    | Pennsylvania |         19140 | East     | OFF-BI-10001525 | Office Supplies | Binders        | Acco Pressboard Covers with Storage Hooks, 14 7/8" x 11", Executive Red      |    6.858 |          6 |       0.7  |    -5.715  |         -0.8333 |           1 |   2015 |       9 |
|       37 | CA-2016-117590 | 2016-12-08   | 2016-12-10  | First Class    | GH-14485      | Gene Hale       | Corporate   | United States | Richardson      | Texas        |         75080 | Central  | FUR-FU-10003664 | Furniture       | Furnishings    | Electrix Architect's Clamp-On Swing Arm Lamp, Black                          |  190.92  |          5 |       0.6  |  -147.963  |         -0.775  |           1 |   2016 |      12 |
|       39 | CA-2015-117415 | 2015-12-27   | 2015-12-31  | Standard Class | SN-20710      | Steve Nguyen    | Home Office | United States | Houston         | Texas        |         77041 | Central  | FUR-BO-10002545 | Furniture       | Bookcases      | Atlantic Metals Mobile 3-Shelf Bookcases, Custom Colors                      |  532.399 |          3 |       0.32 |   -46.9764 |         -0.0882 |           1 |   2015 |      12 |
|       40 | CA-2015-117415 | 2015-12-27   | 2015-12-31  | Standard Class | SN-20710      | Steve Nguyen    | Home Office | United States | Houston         | Texas        |         77041 | Central  | FUR-CH-10004218 | Furniture       | Chairs         | Global Fabric Manager's Chair, Dark Gray                                     |  212.058 |          3 |       0.3  |   -15.147  |         -0.0714 |           1 |   2015 |      12 |
|       67 | US-2015-164175 | 2015-04-30   | 2015-05-05  | Standard Class | PS-18970      | Paul Stevenson  | Home Office | United States | Chicago         | Illinois     |         60610 | Central  | FUR-CH-10001146 | Furniture       | Chairs         | Global Value Mid-Back Manager's Chair, Gray                                  |  213.115 |          5 |       0.3  |   -15.2225 |         -0.0714 |           1 |   2015 |       4 |
|       73 | US-2015-134026 | 2015-04-26   | 2015-05-02  | Standard Class | JE-15745      | Joel Eaton      | Consumer    | United States | Memphis         | Tennessee    |         38109 | South    | FUR-CH-10000513 | Furniture       | Chairs         | High-Back Leather Manager's Chair                                            |  831.936 |          8 |       0.2  |  -114.391  |         -0.1375 |           1 |   2015 |       4 |
|       75 | US-2015-134026 | 2015-04-26   | 2015-05-02  | Standard Class | JE-15745      | Joel Eaton      | Consumer    | United States | Memphis         | Tennessee    |         38109 | South    | OFF-ST-10004123 | Office Supplies | Storage        | Safco Industrial Wire Shelving System                                        |   72.784 |          1 |       0.2  |   -18.196  |         -0.25   |           1 |   2015 |       4 |
|       76 | US-2017-118038 | 2017-12-09   | 2017-12-11  | First Class    | KB-16600      | Ken Brennan     | Corporate   | United States | Houston         | Texas        |         77041 | Central  | OFF-BI-10004182 | Office Supplies | Binders        | Economy Binders                                                              |    1.248 |          3 |       0.8  |    -1.9344 |         -1.55   |           1 |   2017 |      12 |
|       77 | US-2017-118038 | 2017-12-09   | 2017-12-11  | First Class    | KB-16600      | Ken Brennan     | Corporate   | United States | Houston         | Texas        |         77041 | Central  | FUR-FU-10000260 | Furniture       | Furnishings    | 6" Cubicle Wall Clock, Black                                                 |    9.708 |          3 |       0.6  |    -5.8248 |         -0.6    |           1 |   2017 |      12 |

*(Showing top 15 rows)*

### Query
```sql
---------------------------------------Order Per Segment-------------------------------------------------------

select Segment , count(Order_ID) as total_Orders from retail_processed_data
group by 1 
order by 2 desc;
```

| Segment     |   total_Orders |
|:------------|---------------:|
| Consumer    |           5191 |
| Corporate   |           3020 |
| Home Office |           1783 |

### Query
```sql
---------------------------------------Average Discount By Category----------------------------------------------
select Category , Avg(Discount) as Avg_Discount from retail_processed_data 
group by 1 
order by  2 desc;
```

| Category        |   Avg_Discount |
|:----------------|---------------:|
| Furniture       |       0.173923 |
| Office Supplies |       0.157285 |
| Technology      |       0.132323 |

### Query
```sql
--------------------------------------Yearly Sales Growth--------------------------------------------------------
select Year , Sum(Sales) as total_Sales from retail_processed_data
group by 1 
order by 1;
```

|   Year |   total_Sales |
|-------:|--------------:|
|   2014 |        484247 |
|   2015 |        470533 |
|   2016 |        609206 |
|   2017 |        733215 |

### Query
```sql
------------------------------------Top 10 Products BY Profit-----------------------------------------------------
select Product_Name , sum(Profit) as total_Profit from retail_processed_data
group by 1 
order by 2 desc 
limit 10;
```

| Product_Name                                                                |   total_Profit |
|:----------------------------------------------------------------------------|---------------:|
| Canon imageCLASS 2200 Advanced Copier                                       |       25199.9  |
| Fellowes PB500 Electric Punch Plastic Comb Binding Machine with Manual Bind |        7753.04 |
| Hewlett Packard LaserJet 3310 Copier                                        |        6983.88 |
| Canon PC1060 Personal Laser Copier                                          |        4570.93 |
| HP Designjet T520 Inkjet Large Format Printer - 24" Color                   |        4094.98 |
| Ativa V4110MDD Micro-Cut Shredder                                           |        3772.95 |
| 3D Systems Cube Printer, 2nd Generation, Magenta                            |        3717.97 |
| Plantronics Savi W720 Multi-Device Wireless Headset System                  |        3696.28 |
| Ibico EPK-21 Electric Binding System                                        |        3345.28 |
| Zebra ZM400 Thermal Label Printer                                           |        3343.54 |

### Query
```sql
----------------------------------- Negative Profit Sub-Category------------------------------------------------
select Sub_Category , sum(Profit) as total_Profit from retail_processed_data
group by 1
having sum(Profit)<0
order by 2;
```

| Sub_Category   |   total_Profit |
|:---------------|---------------:|
| Tables         |      -17725.5  |
| Bookcases      |       -3472.56 |
| Supplies       |       -1189.1  |

