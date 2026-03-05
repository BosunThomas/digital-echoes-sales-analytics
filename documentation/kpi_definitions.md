Annual Revenue Growth
This KPI tracks how total revenue changes from one year to the next. It highlights long‑term performance patterns and helps identify whether sales strategies are improving overall financial outcomes. It is calculated by comparing current‑year revenue to the previous year and expressing the difference as a percentage.
Business Definition
Percentage change in total revenue compared to the previous year.
Formula
\mathrm{Annual\  Revenue\  Growth}=\frac{\mathrm{Revenue_{Current\  Year}}-\mathrm{Revenue_{Previous\  Year}}}{\mathrm{Revenue_{Previous\  Year}}}\times 100

SQL Logic (example)
SELECT 
    Year,
    SUM(TotalRevenue) AS Revenue,
    LAG(SUM(TotalRevenue)) OVER (ORDER BY Year) AS PrevYearRevenue,
    ((SUM(TotalRevenue) - LAG(SUM(TotalRevenue)) OVER (ORDER BY Year)) 
        / NULLIF(LAG(SUM(TotalRevenue)) OVER (ORDER BY Year), 0)) * 100 
        AS AnnualRevenueGrowth
FROM Sales
GROUP BY Year
ORDER BY Year;

DAX Measure
Total Revenue = SUM(Sales[TotalRevenue])

Previous Year Revenue = CALCULATE([Total Revenue], DATEADD('Date'[Date], -1, YEAR))

Annual Revenue Growth = 
DIVIDE([Total Revenue] - [Previous Year Revenue], [Previous Year Revenue])

Channel Profitability Ratio
This KPI evaluates how efficiently each sales channel converts revenue into profit. It supports decisions about budget allocation and channel optimisation.
Business Definition
Profit generated per channel relative to revenue or cost.
Formula
\mathrm{Channel\  Profitability\  Ratio}=\frac{\mathrm{Total\  Profit}}{\mathrm{Total\  Revenue}}

SQL Logic (example)
SELECT 
    SalesChannel,
    SUM(TotalProfit) AS Profit,
    SUM(TotalRevenue) AS Revenue,
    SUM(TotalProfit) / NULLIF(SUM(TotalRevenue), 0) AS ProfitabilityRatio
FROM Sales
GROUP BY SalesChannel;

DAX Measure
Total Profit = SUM(Sales[TotalProfit])
Total Revenue = SUM(Sales[TotalRevenue])

Channel Profitability Ratio = DIVIDE([Total Profit], [Total Revenue])

Regional Efficiency and Volume
This KPI measures how effectively each region generates profit relative to units sold. It highlights operational performance and margin strength.
Business Definition
Profit per unit sold in each region.
Formula
\mathrm{Regional\  Efficiency}=\frac{\mathrm{Total\  Profit}}{\mathrm{Units\  Sold}}
SQL Logic (example)
SELECT 
    Region,
    SUM(TotalProfit) AS Profit,
    SUM(UnitsSold) AS Units,
    SUM(TotalProfit) / NULLIF(SUM(UnitsSold), 0) AS ProfitPerUnit
FROM Sales
GROUP BY Region;

DAX Measure
Units Sold = SUM(Sales[UnitsSold])
Total Profit = SUM(Sales[TotalProfit])

Profit Per Unit = DIVIDE([Total Profit], [Units Sold])

How these KPIs support my analysis
- They provide a consistent framework for comparing performance across years, channels, and regions.
- They help identify where growth is strongest and where strategic interventions are needed.
- They connect directly to my dashboard visuals, making insights easier to interpret and act on.
- They support forecasting, planning, and decision‑making by grounding analysis in measurable outcomes.
- They demonstrate clear alignment between SQL logic, DAX modelling, and business outcomes.

