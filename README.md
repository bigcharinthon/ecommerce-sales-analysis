# E-commerce Sales Analysis (SQL & Power BI)

## Project Overview
This project analyzes e-commerce transactional data using **SQL (SQLite)** and **Power BI** to evaluate business performance and answer key business questions related to **revenue, product performance, and customer behavior**.

The objective of this project is to demonstrate practical SQL skills and the ability to translate data into **business insights**, rather than focusing only on raw metrics.

---

## Tools & Technologies
- SQL (SQLite)
- Power BI
- GitHub (Project Documentation)

---

## Project Structure
├── data
│ └── ecommerce.db
├── sql
│ ├── kpi_01_total_revenue.sql
│ ├── kpi_02_monthly_revenue.sql
│ ├── kpi_03_top_5_products.sql
│ ├── kpi_04_bottom_5_products.sql
│ └── kpi_05_repeat_customers.sql
├── images
│ ├── overview_dashboard.png
│ ├── monthly_revenue.png
│ ├── top_5_products_by_revenue.png
│ └── repeat_customers.png
└── README.md

---

## Business Questions & Analysis

### KPI 1: Total Revenue
**Business Question:**  
What is the total revenue generated from all orders?

**Purpose:**  
To understand overall business performance and establish a baseline for further analysis.

---

### KPI 2: Monthly Revenue Trend
**Business Question:**  
How does revenue change over time on a monthly basis?

![Monthly Revenue](images/monthly_revenue.png)

**Insight:**  
Revenue in **November is noticeably lower** compared to other months.  
This may indicate seasonal purchasing behavior, where customers delay purchases while waiting for major promotional periods later in the year.

**Business Implication:**  
Running targeted promotions during low-performing months could help stabilize revenue trends.

---

### KPI 3: Top 5 Products by Revenue
**Business Question:**  
Which products generate the highest revenue?

![Top 5 Products](images/top_5_products_by_revenue.png)

**Insight:**  
A small number of products contribute a large proportion of total revenue, indicating revenue concentration.

**Business Implication:**  
These products should be prioritized for inventory planning, marketing campaigns, and promotional strategies.

---

### KPI 4: Bottom 5 Products by Revenue
**Business Question:**  
Which products generate the lowest revenue?

**Insight:**  
Low revenue does not necessarily imply poor product quality.  
Higher-priced products tend to have lower purchase frequency, which impacts total revenue.

**Business Implication:**  
Potential actions include pricing optimization, targeted discounts, or repositioning these products within marketing campaigns.

---

### KPI 5: Repeat Customers
**Business Question:**  
How many customers place more than one order?

![Repeat Customers](images/repeat_customers.png)

**Insight:**  
All customers in the dataset are repeat customers, suggesting strong customer retention.  
However, this result may be influenced by the limited dataset size.

**Business Implication:**  
Implementing loyalty programs or personalized offers could help increase customer lifetime value.

---

## Dashboard Overview
![Dashboard Overview](images/overview_dashboard.png)

The Power BI dashboard consolidates all KPIs into a single view, allowing stakeholders to quickly monitor revenue trends, product performance, and customer behavior.

---

## Conclusion
This project demonstrates the ability to:
- Write structured SQL queries to answer real business questions
- Analyze data beyond surface-level metrics
- Communicate insights with clear business implications

The analysis highlights opportunities in **promotion timing, product strategy, and customer retention**, which are key drivers of business performance.

---

## Future Improvements
- Expand analysis using a larger dataset
- Perform customer segmentation
- Analyze customer lifetime value (CLV)
- Evaluate the impact of promotions on revenue
