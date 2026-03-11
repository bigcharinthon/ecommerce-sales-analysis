/* ===============================
   KPI 2: Monthly Revenue
   Business Question:
   - What is the total revenue by month?
   =============================== */

SELECT strftime('%Y-%m', order_date) AS order_month,
sum(total_sales) AS monthly_revenue
from orders
GROUP BY order_month
ORDER by order_month;

/*
Insight:
This query shows the monthly revenue trend, allowing us to track
sales performance over time.
*/
