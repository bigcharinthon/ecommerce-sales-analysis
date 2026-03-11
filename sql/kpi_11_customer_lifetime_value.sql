/* ===============================
KPI 10: average_order_value
Business Question:
-What is the average order value (AOV)?
=============================== */

SELECT c.customer_id,
count(o.order_id) as count_orders,
sum(o.total_sales) as Revenue
from orders o
join customers c
on o.customer_id=c.customer_id
GROUP BY c.customer_id
ORDER BY Revenue DESC

/*
Insight:
This query calculates the average order value (AOV),
which represents the average amount customers spend per order.

It helps businesses understand customer purchasing behavior
and evaluate overall sales performance.

The results can support strategies such as upselling,
bundling products, or improving promotional campaigns
to increase order value.
*/
