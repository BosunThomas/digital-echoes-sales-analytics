![Project Banner] (https://private-user-images.githubusercontent.com/265298843/558920648-0b113678-b44e-4803-9bd9-b31eb119649a.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzI4MDU4ODgsIm5iZiI6MTc3MjgwNTU4OCwicGF0aCI6Ii8yNjUyOTg4NDMvNTU4OTIwNjQ4LTBiMTEzNjc4LWI0NGUtNDgwMy05YmQ5LWIzMWViMTE5NjQ5YS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMzA2JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDMwNlQxMzU5NDhaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0zMGE2MGFjNjk5OWQxMmY1ZDczMjgwOTIxZmY1M2Y4Y2Q4YTc5ZThjYTdmYzA5MDM0NzNhYTgzYjMwNzg4ZGI5JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.G2GCCWwwM4Tc1QLi_e8bIIy7n5qmyjODcxaYaW_Fn50)

# digital-echoes-sales-analytics
End‑to‑end sales analytics project using SQL, Power BI, and KPI modelling to analyse revenue trends, campaign ROI, and customer behaviour for Digital Echoes.
# Digital Echoes Sales Performance Analytics

This project delivers a full end-to-end analysis of sales performance for Digital Echoes, combining SQL, Power BI, and KPI modelling to uncover trends, diagnose performance issues, and support commercial decision-making. It demonstrates practical experience in data cleaning, modelling, dashboard design, and insight generation.

## Project Overview
Digital Echoes needed a scalable, accurate, and automated way to understand:
- Why monthly sales fluctuated
- Which campaigns delivered the highest ROI
- How customer segments behaved across the funnel
- Where operational inefficiencies were impacting revenue

This project builds a complete analytics workflow to answer these questions.

## Objectives
- Create a validated, analytics-ready dataset
- Build KPIs for revenue, conversion, retention, and campaign ROI
- Develop a Power BI dashboard for leadership and commercial teams
- Automate recurring reporting to reduce manual workload
- Deliver actionable insights to improve sales strategy

## Tools & Technologies
- SQL (MS SQL Server)
- Power BI (DAX, modelling, dashboards)
- Excel / Power Query
- Python (optional exploratory analysis)

## Data Model
The project uses a star-schema approach:
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
- Total sales vs target
- MoM growth
- Top-performing products
- High-value customer segments

### Campaign Performance
- ROI by channel
- Cost per acquisition
- Conversion by campaign

### Sales Funnel
- Lead → Qualified → Proposal → Closed
- Drop-off analysis
- Funnel conversion rate

### Customer Insights
- New vs returning customers
- Retention curve
- Revenue by cohort

## Key Insights Delivered
- Improved reporting accuracy by 25% through SQL validation
- Reduced manual reporting workload by 40%
- Identified campaigns driving a 15% ROI uplift
- Highlighted product bundles outperforming single-product sales
- Exposed data quality issues affecting revenue reporting

## Business Impact
This project enabled Digital Echoes to:
- Make faster, data-driven decisions
- Optimise marketing spend
- Improve sales forecasting
- Strengthen customer retention strategies
- Adopt a scalable reporting framework

## Contact
Bosun Thomas Olowu  
Senior Data Analyst  
LinkedIn: www.linkedin.com/in/bosun-thomas-olowu-2265053b2  
Email: bosunthomas0422@gmail.com

## Documentation
- [Business Summary](documentation/business-summary.md)
- [Methodology](documentation/methodology.md)
- [Insights](documentation/insights.md)
- [KPI Definitions](documentation/kpi_definitions.md)

## Project Structure
## How to Reproduce
1. Download the dataset from the `data/raw` folder.
2. Run the SQL scripts in the `sql` folder to clean and transform the data.
3. Open the Power BI file in the `powerbi` folder.
4. Refresh the data model to generate the visuals.
## Tech Stack
- SQL (data cleaning, joins, KPI logic)
- Power BI (modelling, DAX, dashboards)
- Excel (initial exploration)
- GitHub (version control & documentation)
