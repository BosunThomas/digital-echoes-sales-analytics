SELECT Region, product
FROM cutomer

select * From Sales_Table

SELECT Region FROM Sales_Table

SELECT * FROM Sales_Table;

SELECT * FROM Sales_Table 
WHERE Item_Type = BabyFood;

SELECT *
FROM Sales_Table
WHERE Item_Type = 'Baby Food';
SELECT *
FROM Sales_Table
WHERE Sales_Channel = 'offline';

INSERT INTO Sales_Table
VALUES ('Percentage', 'Net_profit', '50000');

INSERT INTO Sales_Table (Order_ID, Item_Type, Total_Revenue)
VALUES ('S001', 'Laptop', '1200');

WHERE order_date >= CURRENT_DATE - INTERVAL 30 DAY

-- Extract
YEAR(sale_date)
MONTH(sale_date)

-- Add dates
DATEADD(day, 7, sale_date)

-- Start of month
DATEFROMPARTS(YEAR(sale_date), MONTH(sale_date), 1)

-- Format
FORMAT(sale_date, 'yyyy-MM')

INSERT INTO Sales_Table
  (Order_Date, item_type, Region)
VALUES
  ('2025-01-15', 'Headphones', '249.99');

  INSERT INTO Sales_Table
  (Order_Date, Item_Type, Region)
VALUES
  ('2025-01-01', 'Speaker', 199.99),
  ('2025-01-02', 'Speaker', 179.99),
  ('2025-01-03', 'Speaker', 189.99);

  UPDATE Sales_Table
SET Unit_Cost = 299.99
WHERE Order_ID = 135425221;


