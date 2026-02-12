/* ===============================
   KPI 1: Total Revenue
   Business Question:
   - What is the total revenue from all orders?
   =============================== */
SELECT
    SUM(oi.quantity * oi.price) AS total_revenue
FROM order_items oi;
