/* ===============================
KPI 12: revenue_growth_rate
Business Question:
-How does revenue grow month over month?
=============================== */

with monthly_sales AS (SELECT 
      strftime('%Y-%m', order_date) AS month,
      SUM(total_sales) AS monthly_sales
    FROM orders
    GROUP BY month
)
SELECT month,monthly_sales,
sum(monthly_sales) OVER(ORDER BY month) AS total_revenue
from monthly_sales

/*
Insight:
This analysis calculates the month-over-month (MoM) revenue growth.

It helps businesses track changes in sales performance between months.
The results can help identify periods of growth or decline,

supporting decisions such as promotional campaigns or sales strategies.
*/
