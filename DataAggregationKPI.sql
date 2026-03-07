Select * from Sales_Tables;

** //SQL DATA AGGREGATION ACCORDING TO KEY PERFORMANCE INDICATORS (KPI)

KPI 1: Determine the total revenue and profit across different region

Select
	Distinct Region,
	SUM(Total_Revenue) AS "Total_Revenue",
	SUM(Total_profit) AS "Total_Profit"
FROM 
	Sales_Tables
Group By
	Region;

SELECT 
    region,
    SUM(Total_revenue) AS total_revenue,
    SUM(Total_profit) AS total_profit
FROM Sales_Tables
GROUP BY region
ORDER BY total_revenue DESC;

SELECT 
    SUM(total_revenue) AS grand_total_revenue,
    SUM(total_profit) AS grand_total_profit
FROM (
    SELECT 
        region,
        SUM(total_revenue) AS total_revenue,
        SUM(total_profit) AS total_profit
    FROM Sales_Tables
    GROUP BY region
) AS regional_totals;


SELECT 
    region,
    SUM(total_revenue) AS total_revenue,
    SUM(total_profit) AS total_profit
FROM Sales_Tables
GROUP BY region

UNION ALL

SELECT
    'Grand Total' AS region,
    SUM(total_revenue) AS total_revenue,
    SUM(total_profit) AS total_profit
FROM sales_tables;

SELECT * FROM sales_tables
ORDER BY region DESC;

KPI 2: Calculate total revenue made annually

SELECT
	YEAR (Order_Date) AS "Year",
	SUM (Total_Revenue) AS "total_Revenue"
FROM 
Sales_Tables
GROUP BY 
YEAR (Order_Date);

KPI 3: Compare total quantity sold year by year for each item type.

SELECT 
		Distinct (Item_Type) As "Item_Type",
		YEAR (Order_Date) As "year",
		SUM (Units_Sold) As "Total_units_sold"
from
		Sales_Tables
Group By 
YEAR (order_date), 		
 Item_Type;

KPI 4: Revenue contribution Rate by Region

 SELECT 
DISTINCT REGION AS "REGION",
ROUND (SUM (Total_Revenue) * 100/(SELECT SUM (Total_Revenue) FROM Sales_Tables),2) AS "Rate_of_Revenue"

FROM 
Sales_Tables
GROUP BY 
REGION;

KPI 5: Which 3 products are performing best?

To answer KPI 5 – Which 3 products are performing best, you simply rank products by total revenue (or profit, depending on your KPI definition) and return the top three.
Here are the clean SQL patterns you can use depending on your dataset.

Top 3 Best‑Performing Products (by Revenue)
SELECT TOP  3
    item_type,
    SUM(total_revenue) AS total_revenue
FROM sales_tables
GROUP BY Item_Type
ORDER BY total_revenue DESC;

If you want to rank by profit instead
SELECT TOP 3
    item_type,
    SUM(Total_Profit) AS total_profit
FROM sales_tables
GROUP BY Item_Type
ORDER BY total_profit DESC;

KPI 6: Determine the total profit and profit margin for each item type sold
SELECT 
    item_type,
    SUM(total_profit) AS total_profit,
    SUM(total_profit) / SUM(total_revenue) * 100 AS total_profit_margin_percent
FROM sales_tables
GROUP BY item_type
ORDER BY total_profit DESC;

SELECT
    item_type,
    SUM(total_profit) AS total_profit,
    SUM(total_profit) / SUM(total_revenue) * 100 AS total_profit_margin_percent,

    -- Ranking (1 = highest profit)
    RANK() OVER (ORDER BY SUM(total_profit) DESC) AS total_profit_rank,

    -- KPI Colour Bands
    CASE 
        WHEN SUM(total_profit) / SUM(total_revenue) * 100 >= 40 THEN 'Green – Excellent'
        WHEN SUM(total_profit) / SUM(total_revenue) * 100 BETWEEN 20 AND 39.99 THEN 'Amber – Moderate'
        ELSE 'Red – Low'
    END AS kpi_band
FROM sales_tables
GROUP BY item_type
ORDER BY total_profit DESC;

KPI 7: Average amount of profit achieved annually 

SELECT 
		YEAR (order_date) as "year",
		AVG (total_profit) as "average"
FROM
		Sales_Tables
GROUP BY 
		year(order_date);

KPI 8: Top 4 countries with highest and lowest revenue

SELECT TOP 4 Country,
	
	SUM(Total_Revenue) AS "Total_Revenue"
FROM 
Sales_Tables
GROUP BY 
Country
ORDER BY 
SUM(Total_Revenue) DESC;

KPI 9: Compare sales/revenue growth rate year on year
SELECT 
	    YEAR(order_date) AS 'YEAR',
		SUM(total_revenue) AS 'ANNUAL_REVENUE',
	   LAG(SUM(total_revenue), 1) OVER (ORDER BY YEAR(order_date)) AS 'PREVIOUS_YEAR_REVENUE',
	   ((SUM(total_revenue) - LAG(SUM(total_revenue), 1) OVER (ORDER BY YEAR(order_date))) 
       / LAG(SUM(total_revenue), 1) OVER (ORDER BY YEAR(order_date))) * 100 AS 'YOY_Difference'
FROM   
	Sales_Tables
GROUP BY 
	YEAR(Order_Date)
ORDER BY
	YEAR;

KPI 10: What is the Average Order Value for each year?
SELECT
    YEAR(order_date) AS 'YEAR',
	SUM(Total_revenue) AS 'Revenue',
	COUNT(order_date) AS 'Number_of_Orders',
    AVG(total_revenue) AS 'AOV'
FROM
    Sales_Tables
GROUP BY
    Year(Order_date)
ORDER BY
    Year(Order_date);

QUESTION 1: Compare year by year total units sold
SELECT
	YEAR (Order_Date) AS "Year",
	SUM (Units_Sold) AS "Total_Quantity_Sold"
FROM 
Sales_Tables
GROUP BY 
YEAR (Order_Date);

QUESTION 2: Top 5 countries with lowest units sold below the bench market target of 50,000 units
SELECT 
	DISTINCT (Country),
	SUM(Units_Sold) AS "total_Items_Sold"
FROM 
	Sales_Tables
WHERE 
Units_Sold > 50000
GROUP BY
	Country
ORDER BY 
	SUM(Units_Sold) DESC;

QUESTION 3: Rate of total revenue achieved annually
SELECT 
YEAR (Order_Date) AS "Year",
ROUND (SUM (Total_Revenue) * 100/(SELECT SUM (Total_Revenue) FROM Sales_tables),2) AS "Percentage"
FROM 
Sales_tables
GROUP BY 
YEAR (Order_Date);

QUESTION 4: Count of item types sold in region
SELECT
	DISTINCT Region AS "Region",
	COUNT (Item_Type) AS "Item_Sold"
FROM 
Sales_tables
GROUP BY 
Region;

**// CREATING TABLE VIEW FROM A REAL TABLE **//

Create View Sales_Table_View AS
Select * From Sales_Tables_View;

















