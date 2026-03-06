![Project Banner] (https://private-user-images.githubusercontent.com/265298843/558920648-0b113678-b44e-4803-9bd9-b31eb119649a.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzI4MDU4ODgsIm5iZiI6MTc3MjgwNTU4OCwicGF0aCI6Ii8yNjUyOTg4NDMvNTU4OTIwNjQ4LTBiMTEzNjc4LWI0NGUtNDgwMy05YmQ5LWIzMWViMTE5NjQ5YS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMzA2JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDMwNlQxMzU5NDhaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0zMGE2MGFjNjk5OWQxMmY1ZDczMjgwOTIxZmY1M2Y4Y2Q4YTc5ZThjYTdmYzA5MDM0NzNhYTgzYjMwNzg4ZGI5JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.G2GCCWwwM4Tc1QLi_e8bIIy7n5qmyjODcxaYaW_Fn50)

## Digital Echoes Sales Performance Analytics

End‑to‑end sales analytics project using SQL, Power BI, and KPI modelling to analyse revenue trends, campaign ROI, and customer behaviour for Digital Echoes.

This project delivers a full end‑to‑end analysis of sales performance, combining SQL, Power BI, and KPI modelling to uncover trends, diagnose performance issues, and support commercial decision‑making. It demonstrates practical experience in data cleaning, modelling, dashboard design, and insight generation.

---

## Project Overview

Digital Echoes needed a scalable, accurate, and automated way to understand:

- Why yearly sales fluctuated  
- Which campaigns generated the highest ROI  
- How customer segments behaved across the funnel  
- Where operational inefficiencies were impacting revenue  

This project built an end‑to‑end analytics workflow to answer those questions.

---
## Documentation
- [Business Summary](documentation/business-summary.md)  
- [Methodology](documentation/methodology.md)  
- [Insights](documentation/insights.md)  
- [KPI Definitions](documentation/kpi_definitions.md)

---
## Project Structure

## Data Model
This project uses a star-schema approach:
- Fact tables: sales, campaigns, customer transactions
- Dimensions: customers, products, channels, time
- Marts: revenue trends, campaign ROI, retention cohorts

A full diagram is included in `/documentation/data_model_diagram.png`.

## Repository Contents
- `/sql` — SQL scripts for cleaning, modelling, and KPI calculations
- `/powerbi` — Power BI file and dashboard screenshots
- `/documentation` — KPI definitions, methodology, insights report
- `/data` — Sample anonymised datasets
- `/notebooks` — Optional exploratory analysis

## Dashboard Highlights
### Executive Summary
A high‑level overview of sales performance, growth trends, and customer behaviour.
- Total sales vs target
- MoM growth
- Top-performing products
- High-value customer segments

### Campaign Performance
- ROI by channel
- Cost per acquisition
- Conversion by campaign

(https://private-user-images.githubusercontent.com/265298843/558920648-0b113678-b44e-4803-9bd9-b31eb119649a.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzI4MDU4ODgsIm5iZiI6MTc3MjgwNTU4OCwicGF0aCI6Ii8yNjUyOTg4NDMvNTU4OTIwNjQ4LTBiMTEzNjc4LWI0NGUtNDgwMy05YmQ5LWIzMWViMTE5NjQ5YS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMzA2JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDMwNlQxMzU5NDhaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0zMGE2MGFjNjk5OWQxMmY1ZDczMjgwOTIxZmY1M2Y4Y2Q4YTc5ZThjYTdmYzA5MDM0NzNhYTgzYjMwNzg4ZGI5JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.G2GCCWwwM4Tc1QLi_e8bIIy7n5qmyjODcxaYaW_Fn50)

### Sales Funnel
- Lead → Qualified → Proposal → Closed
- Drop-off analysis
- Funnel conversion rate

### Customer Insights
- New vs returning customers
- Retention curve
- Revenue by cohort

## Key Insights
- Revenue fluctuated significantly between 2010–2017, with peaks in 2012 and troughs in 2011 and 2015–2016.  
- Sub‑Saharan Africa and Europe delivered the highest profit and unit sales.  
- Online channels contributed 56.42% of total profit, outperforming offline channels.  
- Regions with lower unit volumes (e.g., North America) show opportunities for targeted interventions.  
- High‑margin product categories drove strong profitability in regions like Australia & Oceania.

Full insights available in: **documentation/insights.md**
---
## Recommendations
- Stabilise annual revenue through consistent campaign scheduling.  
- Increase investment in online channels to maximise ROI.  
- Strengthen regional strategies for high‑performing markets.  
- Optimise product mix and margins across regions.  
- Target underperforming regions with focused interventions.  
- Enhance forecasting and KPI monitoring for proactive decision‑making.

---
## Business Impact
This project enabled Digital Echoes to:
- Make faster, data-driven decisions
- Optimise marketing spend
- Improve sales forecasting
- Strengthen customer retention strategies
- Adopt a scalable reporting framework
## Business Impact Contd
- More predictable revenue performance through structured planning.  
- Higher profitability via channel optimisation.  
- Stronger regional contribution and targeted growth strategies.  
- Improved operational efficiency and margin control.  
- More strategic, data‑driven decision‑making across the organisation.

## KPI Visual Examples

### Annual Revenue Growth
![Annual Revenue Growth](visuals/annual_revenue_growth.png) (https://private-user-images.githubusercontent.com/265298843/558911690-d57ce912-a63f-49ff-adee-9c8f068c8d7f.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzI4MDk4ODgsIm5iZiI6MTc3MjgwOTU4OCwicGF0aCI6Ii8yNjUyOTg4NDMvNTU4OTExNjkwLWQ1N2NlOTEyLWE2M2YtNDlmZi1hZGVlLTljOGYwNjhjOGQ3Zi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMzA2JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDMwNlQxNTA2MjhaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0wM2Q3MDg2OWRiYTQwMWYwYjBhYWFkN2RiMGM4MGVlOThjNGE5ZTBhOWE3MTI5M2YwZmEzMjQ2MzY5ZWJiZTBlJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.drIyWKGAWKvPCHxVEcRz-9eKi5WPv7nlhaTotmV8TW0)

### Channel Profitability Ratio
![Channel Profitability Ratio](visuals/channel_profitability.png)

### Regional Efficiency and Volume
![Regional Efficiency and Volume](visuals/regional_efficiency.png)

### KPI Summary Cards
![KPI Summary Cards](visuals/kpi_cards.png)

## Tech Stack
- **SQL** — data cleaning, joins, transformations, KPI logic  
- **Power BI** — modelling, DAX, dashboard design  
- **Excel** — initial exploration and validation  
- **GitHub** — version control, documentation, project structure  

## Tools & Technologies
- SQL (MS SQL Server)
- Power BI (DAX, modelling, dashboards)
- Excel / Power Query
- Python (optional exploratory analysis)
---
## How to Reproduce
1. Download the dataset from the `data/raw` folder.  
2. Run the SQL scripts in the `sql` folder to clean and transform the data.  
3. Open the Power BI file in the `powerbi` folder.  
4. Refresh the data model to generate the visuals.  
5. Review documentation in the `documentation` folder for methodology and insights.

---
## Conclusion
This project demonstrates an end‑to‑end sales analytics workflow, combining SQL, Power BI, and KPI modelling to deliver actionable insights for commercial decision‑making. The structured documentation, reproducible workflow, and validated KPIs reflect industry‑standard BI and QA practices.

## Contact
Bosun Thomas Olowu  
Senior Data Analyst  
LinkedIn: www.linkedin.com/in/bosun-thomas-olowu-2265053b2  
Email: bosunthomas0422@gmail.com
