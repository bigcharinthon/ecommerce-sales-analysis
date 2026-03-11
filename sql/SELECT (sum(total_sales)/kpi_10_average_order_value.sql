/* ===============================
KPI 10: average_order_value
Business Question:
-What is the average order value (AOV)?
=============================== */

SELECT (sum(total_sales)/count(order_id)) as aov
from orders

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
