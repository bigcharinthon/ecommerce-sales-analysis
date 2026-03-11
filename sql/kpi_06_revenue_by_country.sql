/* ===============================
   KPI 6: revenue_by_country
   Business Question:
   - รู้ยอดขายของแต่ละประเทศ
   =============================== */

SELECT 
c.customer_country,
sum(o.total_sales) AS country_revenue
from orders o
JOIN customers c
on o.customer_id=c.customer_id 
GROUP BY c.customer_country
ORDER by country_revenue;

/*
Insight:
.
*/
