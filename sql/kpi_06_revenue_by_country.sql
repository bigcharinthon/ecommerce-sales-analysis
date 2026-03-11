/* ===============================
   KPI 6: revenue_by_country
   Business Question:
   - What is the total revenue per country?
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
This query calculates total revenue by country,
helping businesses understand sales performance across different markets.
The results can support marketing strategies and business decisions
for each country.
*/
