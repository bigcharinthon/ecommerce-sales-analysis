/* ===============================
   KPI 3: Top Products by Revenue
   Business Question:
   - Which are the top 5 products by revenue?
   =============================== */

SELECT
    p.product_name,
    SUM(o.total_sales) AS revenue
FROM orders o
JOIN products p
    ON o.product_id=p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 5;

/*
Insight:
This query identifies the top 5 revenue-generating products.
These products are key contributors to total sales and can be
prioritized for marketing campaigns, promotions, or inventory planning.
*/
