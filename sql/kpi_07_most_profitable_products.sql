/* ===============================
   KPI 7: most_profitable_products
   Business Question:
   - Which products generate the highest profit?
   =============================== */

SELECT
    p.product_name,
    SUM(profit) AS product_profit
FROM orders o
JOIN products p
    ON o.product_id=p.product_id
GROUP BY p.product_name
ORDER BY product_profit DESC
LIMIT 5;

/*
Insight:
This query calculates total profit for each product,
helping businesses understand which products generate the highest profit.

The results can support business decisions such as
prioritizing high-profit products and improving strategies
for lower-performing products.
*/

