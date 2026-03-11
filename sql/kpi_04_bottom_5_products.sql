/* ===============================
   KPI 4: bottom Products by Revenue
   Business Question:
   - Which are the bottom products by revenue?
   =============================== */

SELECT
    p.product_name,
    SUM(o.total_sales) AS revenue
FROM orders o
JOIN products p
    ON o.product_id=p.product_id
GROUP BY p.product_name
ORDER BY revenue ASC
LIMIT 5;

/*
Insight:
This query highlights the lowest-performing products by revenue,
helping identify items that may require pricing, marketing,
or product strategy adjustments.
*/
