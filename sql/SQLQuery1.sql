Select * sales_table2;

SELECT * FROM sales_table2;

Comment: ** SQL DATA CLEANING PROCESSES**

Case 1: Update Records in the data table

Update sales_table
Set Order_Priority = 'High'
Where Order_Priority ='H'

Case 2: Change data type from Datatime to date in Order_date column

Alter table sales_table2
Alter column order_date date;

Case 3: Deleting of Columns from database  table
e.g create an email column to practice

Alter table sales_table
Add email nvarchar(255);

Alter table sales_table
Drop column email;

Case 4: Change data type from datetime to integer (int) for units_sold column

Step 1: create a new column (Units_sold_converted)

Alter table sales_table2
Add units_sold_converted int;

Step 2: Convert (write) into the new column (Units_Sold_Converted) from the old column (Units_Sold) 

UPDATE SALES_TABLE
SET Units_Sold_Converted = CONVERT(int,Units_Sold);

Step 3: Delete the previous column called “Units_Sold”

ALTER TABLE SALES_TABLE
DROP COLUMN Units_Sold;

Step 4: Rename the new column header from Units_Sold_Converted to “Units_Sold” using the “DESIGN” GUI

SELECT * FROM sales_table;

SELECT *
FROM Sales_Table
WHERE
  TRY_CONVERT(DECIMAL(10,2), unit_price) IS NULL
  AND unit_price IS NOT NULL;

SELECT *
FROM Sales_Table
WHERE
  TRY_CONVERT(DECIMAL(10,2), total_revenue) IS NULL
  AND Total_Revenue IS NOT NULL;

SELECT *
FROM Sales_Table
WHERE
  TRY_CONVERT(DECIMAL(10,2), Total_Profit) IS NULL
  AND Total_Profit IS NOT NULL;

UPDATE Sales_Table
SET unit_price = REPLACE(REPLACE(unit_price, '£', ''), ',', '');
UPDATE Sales_Table
SET Unit_Cost = REPLACE(REPLACE(Unit_Cost, '£', ''), ',', '');
UPDATE Sales_Table
SET total_revenue = REPLACE(REPLACE(Total_Revenue, '£', ''), ',', '');
UPDATE Sales_Table
SET Total_Profit = REPLACE(REPLACE(Total_Profit, '£', ''), ',', '');

UPDATE Sales_Table
SET unit_price = NULL
WHERE unit_price = '';
UPDATE Sales_Table
SET Total_Profit = NULL
WHERE Total_Profit = '';

UPDATE Sales_Table
SET unit_price = NULL
WHERE TRY_CONVERT(DECIMAL(10,2), unit_price) IS NULL;
UPDATE Sales_Table
SET Total_Profit = NULL
WHERE TRY_CONVERT(DECIMAL(10,2), Total_Profit) IS NULL;

ALTER TABLE sales_table
ALTER COLUMN unit_price DECIMAL(10,2);

ALTER TABLE sales_table
ADD total_profit_decimal DECIMAL(10,2);

UPDATE Sales_Table
SET total_profit_decimal = CAST(total_profit AS FLOAT);

ALTER TABLE sales_table
DROP COLUMN total_profit;

EXEC sp_rename 'sales_table.total_profit_decimal', 'total_profit', 'COLUMN';









SELECT * FROM sales_table;

