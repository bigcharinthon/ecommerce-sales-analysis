/* ===============================
KPI 14: customer_revenue_rank
Business Question:
-Which customers generate the highest revenue?
=============================== */

with customer_revenue As(SELECT
c.customer_id as customerid,
sum(o.total_sales) as total_revenue
FROM orders o 
JOIN customers c
on o.customer_id=c.customer_id
group by c.customer_id
)
select 
customerid,
total_revenue,
rank() over(ORDER BY total_reven desc) as rank
from customer_revenue

/*
Insight:
This analysis ranks customers based on the total revenue they generate.

It helps identify high-value customers who contribute the most to overall sales.

The results can support targeted marketing strategies and customer retention programs.
*/
