/* ===============================
KPI 12: running_total_revenue
Business Question:
-How does cumulative revenue grow over time??
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
This analysis calculates the cumulative revenue over time.

It helps businesses track overall revenue growth and evaluate long-term sales performance.

The results can support strategic decisions such as investment planning and business expansion.
*/
