/* ===============================
   KPI 5: Repeat Customers
   Business Question:
   - How many repeat customers are there?
   =============================== */

SELECT
    c.customer_id,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) > 1
ORDER BY total_orders DESC;

/*
Insight:
This query identifies repeat customers by counting how many orders
each customer has placed. Repeat purchases indicate customer loyalty
and help businesses understand long-term customer behavior.
*/
