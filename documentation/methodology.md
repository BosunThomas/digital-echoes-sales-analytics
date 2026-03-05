# Methodology

**SQL:**  
My SQL workflow
  The SQL process establishes the foundation for all downstream modelling and reporting. It covers extraction, cleaning, transformation, and KPI preparation.
- Data extraction — pulling sales, customer, and campaign tables from the source system using structured queries.
- Data cleaning — handling missing values, standardising date formats, normalising product and campaign names, and removing duplicates.
- Transformations — creating derived fields such as revenue, discount amounts, customer segments, and campaign groupings.
- Joins and relationships — merging fact and dimension tables to create a unified analytical dataset.
- KPI preparation — calculating base metrics such as total sales, average order value, repeat purchase rate, and campaign ROI inputs.

**Power BI modelling**
 My modelling layer ensures the dataset is structured for accurate, scalable reporting.
- Data model design — building a star schema with a central fact table and supporting dimensions (date, customer, product, campaign).
- Relationships — defining one‑to‑many and many‑to‑one relationships with appropriate cardinality and cross‑filter direction.
- Data types and formatting — ensuring numeric, date, and categorical fields are correctly typed for DAX and visuals.
- Hierarchies — creating drill‑down paths such as Year → Quarter → Month and Category → Sub‑category.

**DAX / Modelling:**  
 My DAX measures provide the analytical depth needed for KPI tracking and insight generation.
- Core measures — total revenue, total orders, total customers, average order value, conversion rate.
- Time‑intelligence — Year‑over‑Year (YoY) change, year‑to‑date totals, etc.
- Campaign performance — ROI, cost‑per‑acquisition, uplift vs baseline.
- Segmentation metrics — new vs returning customers, high‑value customer contribution, churn indicators.
Validation and QA 

**Validation / QA:**  
- The QA (Quality assurance) ensures the accuracy, reliability, and reproducibility of the analysis.
- My Data integrity checks — verifying row counts, null values, duplicates, and schema consistency.
- My Cross‑tool validation — comparing SQL outputs with Power BI results to ensure alignment.
- My Edge‑case testing — checking behaviour for months with zero sales, missing campaign data, or incomplete customer records.
- My KPI verification — confirming that KPI definitions match business rules and produce expected results.
- My Dashboard accuracy — validating filters, slicers, drill‑downs, and interactions to ensure correct behaviour.

