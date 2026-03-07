Select * From Sales_Table;

Case 2: Change data type from Datetime to date in order_date column

ALTER TABLE SALES_TABLE
ALTER COLUMN Order_Date date;

ALTER TABLE SALES_TABLE
ALTER COLUMN ship_Date date;

DECLARE @datetimeVar DATETIME = GETDATE();
DECLARE @decimalVar FLOAT;

SET @decimalVar = CAST(@datetimeVar AS FLOAT);



ALTER TABLE SALES_TABLE
ALTER COLUMN total_profit DECIMAL(18, 2);



Case 3: Deletung of Columns from database table

e.g Create an Email column to practice

ALTER TABLE SALES_TABLE
Add Email nvarchar (255);


