/* ===============================
   KPI 2: Monthly Revenue
   Business Question:
   - What is the total revenue by month?
   =============================== */
SELECT
    strftime('%Y-%m', o.order_date) AS month,
    SUM(oi.quantity * oi.price) AS monthly_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month;
