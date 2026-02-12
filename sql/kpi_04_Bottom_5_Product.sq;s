/* ===============================
   KPI 4: bottom 5 Products by Revenue
   Business Question:
   - Which are the bottom 5 products by revenue?
   =============================== */
SELECT
    p.product_name,
    SUM(oi.quantity * oi.price) AS revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue ASC
LIMIT 5;
