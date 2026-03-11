/* ===============================
KPI 15: top_products_per_month
Business Question:
-Which product generates the highest revenue in each month?
=============================== */

WITH monthly_sales AS (
SELECT 
p.product_name AS name,
strftime('%Y-%m', o.order_date) AS month,
SUM(o.total_sales) AS monthly_sales
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY month, name
),
  
ranked_products AS (
SELECT
month,
name,
monthly_sales,
RANK() OVER(
PARTITION BY month
ORDER BY monthly_sales DESC
) AS rank
FROM monthly_sales
)

SELECT *
FROM ranked_products
WHERE rank = 1;

/*
Insight:
The analysis shows the top-selling product for each month based on total revenue.

This helps identify which products perform the best during specific periods and reveals potential seasonal demand patterns.

Understanding monthly product performance can support better inventory planning, promotional strategies, and product positioning
*/
