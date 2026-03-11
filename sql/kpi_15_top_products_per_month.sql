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
)

SELECT
month,
name,
monthly_sales,
RANK() OVER(
PARTITION BY month
ORDER BY monthly_sales DESC
) AS rank
FROM monthly_sales

/*
Insight:
This query identifies the top-selling product in each month based on revenue.

It helps businesses understand which products act as "hero products"
within each month.

ช่วยติดสินใจให้ ธุรกิจรูเว่าถ้ามี "hero products ของเดือนกับcategoryตรงกันอาจจะต้องมีการปรับกลยุทธ์ทางธุรกิจไม่งั้นอาจจะมีผลในระยะยาวได้ฆ
*/
