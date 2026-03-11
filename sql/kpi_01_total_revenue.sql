/* ===============================
   KPI 1: Total Revenue
   Business Question:
   - What is the total revenue from all orders?
   =============================== */
SELECT sum(total_sales) as total_revenue
from orders
/*
Insight:
This query calculates the total revenue generated from all orders.
It represents the overall sales performance of the e-commerce store.
*/
