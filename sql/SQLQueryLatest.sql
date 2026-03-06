select * From CUSTOMER_TABLE;
select * From ORDER_TABLE;
select * From PURCHASE_TABLE;

KPI 1: Determine the total revenue and profit across different region

SELECT 
    Region,
    SUM(Total_Revenue) AS Revenue,
    SUM(Total_Profit) AS Profit
FROM CUSTOMER_TABLE
JOIN PURCHASE_TABLE
    ON CUSTOMER_TABLE.Order_ID = PURCHASE_TABLE.Order_ID
GROUP BY Region;

SELECT 
    Region,
    SUM(Total_Revenue) AS Revenue,
    SUM(Total_Profit) AS Profit
FROM Customer_Table
JOIN Purchase_Table
    ON Customer_Table.Order_ID = Purchase_Table.Order_ID
GROUP BY ROLLUP (Region);

SELECT 
    COALESCE(Region, 'Grand Total') AS Region,
    SUM(Total_Revenue) AS Revenue,
    SUM(Total_Profit) AS Profit
FROM Customer_Table
JOIN Purchase_Table
    ON Customer_Table.Order_ID = Purchase_Table.Order_ID
GROUP BY ROLLUP (Region);

KPI 2: Display the result for total revenue made annually

SELECT 
    YEAR(Order_Date) AS Order_Year,
    SUM(Total_Revenue) AS Revenue
FROM Order_Table
JOIN Purchase_Table
    ON Order_Table.Order_ID = Purchase_Table.Order_ID
GROUP BY YEAR(Order_Date);

KPI 3: Compare year by year total quantity sold for each item type

SELECT 
    Item_Type,
    YEAR(Order_Date) AS Order_Year,
    SUM(Units_Sold) AS Total_Units_Sold
FROM Order_Table
JOIN Purchase_Table
    ON Order_Table.Order_ID = Purchase_Table.Order_ID
GROUP BY 
    Item_Type,
    YEAR(Order_Date);

KPI 4: Rate of total revenue achieved in all region

SELECT 
DISTINCT REGION,
ROUND (SUM (Total_Revenue) * 100/(SELECT SUM (Total_Revenue) FROM Purchase_Table),2) AS "Rate of Revenue"
FROM Customer_Table
JOIN Purchase_Table
ON Customer_Table.Order_ID = Purchase_Table.Order_ID
GROUP BY 
REGION;

SELECT 
    REGION,
    ROUND(
        SUM(Total_Revenue) * 100 /
        (SELECT SUM(Total_Revenue) FROM Purchase_Table),
        2
    ) AS "Rate of Revenue"
FROM Customer_Table
JOIN Purchase_Table
    ON Customer_Table.Order_ID = Purchase_Table.Order_ID
GROUP BY REGION;

KPI 5: Which 3 products are performing best in quantity sold?

SELECT TOP 3 
    item_type, 
    SUM(units_sold) AS total_quantity
FROM Order_table
JOIN Purchase_table
ON Order_Table.Order_ID = Purchase_Table.Order_ID

GROUP BY item_type
ORDER BY SUM(units_sold) DESC;

SELECT TOP 3
    item_type,
    SUM(units_sold) AS total_quantity
FROM Order_Table
JOIN Purchase_Table
    ON Order_Table.Order_ID = Purchase_Table.Order_ID
GROUP BY item_type
ORDER BY SUM(units_sold) DESC;

KPI 6: Determine the Gross Profit Margin for each item type sold

SELECT 
DISTINCT item_type as "item type",
SUM (total_revenue) as "revenue",
SUM (total_cost) as "cost",
((SUM(total_revenue) - SUM (total_cost))/SUM (total_revenue))* 100 AS "gross profit margin" 
FROM 
Order_table
JOIN
PURCHASE_TABLE
ON
Order_table.Order_ID = Purchase_Table.Order_ID
GROUP BY Item_Type;

SELECT 
    item_type AS "item type",
    SUM(total_revenue) AS "revenue",
    SUM(total_cost) AS "cost",
    ((SUM(total_revenue) - SUM(total_cost)) / SUM(total_revenue)) * 100 
        AS "gross profit margin"
FROM Order_Table
JOIN Purchase_Table
    ON Order_Table.Order_ID = Purchase_Table.Order_ID
GROUP BY item_type;

KPI 7: Average amount of profit achieved annually

SELECT 
    YEAR(Order_Date) AS Order_Year,
    AVG(Total_Profit) AS Avg_Profit
FROM Order_Table
JOIN Purchase_Table
    ON Order_Table.Order_ID = Purchase_Table.Order_ID
GROUP BY YEAR(Order_Date);


KPI 8:
Top 4 countries with highest and lowest revenue

8(a)
Top 4 countries with highest revenue
8(b)
Top 4 countries with lowest revenue

SELECT TOP 4 
    Country,
    SUM(Total_Revenue) AS [Total Revenue]
FROM Customer_Table
JOIN Purchase_Table
    ON Customer_Table.Order_ID = Purchase_Table.Order_ID
GROUP BY Country
ORDER BY SUM(Total_Revenue) DESC;

SELECT TOP 4 Country,
SUM(Total_Revenue) AS "Total Revenue"
FROM 
Customer_Table
JOIN
Purchase_Table
ON
Customer_table.order_ID = Purchase_Table.Order_ID
GROUP BY 
Country
ORDER BY 
SUM(Total_Revenue) ASC;

KPI 9: Determine revenue growth rate year on year (YOY)

WITH YearlyRevenue AS (
    SELECT 
        YEAR(Order_Date) AS Year,
        SUM(total_revenue) AS Annual_Revenue
    FROM Sales_Tables
    GROUP BY YEAR(Order_Date)
)
SELECT 
    Year,
    Annual_Revenue,
    LAG(Annual_Revenue, 1) OVER (ORDER BY Year) AS Previous_Year_Revenue,
    ((Annual_Revenue - LAG(Annual_Revenue, 1) OVER (ORDER BY Year)) 
        / LAG(Annual_Revenue, 1) OVER (ORDER BY Year)) * 100 
        AS YoY_Difference
FROM YearlyRevenue
ORDER BY Year;

KPI 10:  What is the Average Order Value (AOV) for each year?

SELECT
 YEAR(order_date) AS 'YEAR',
SUM(Total_revenue) AS 'Revenue',
COUNT(order_date) AS 'Number of Orders',
ROUND(AVG(total_revenue),2) AS 'AOV'
FROM
    Order_table
JOIN
 Purchase_table 
ON
Order_table.order_ID = Purchase_Table.Order_ID             
GROUP BY
    Year(Order_date)
ORDER BY
    Year;















