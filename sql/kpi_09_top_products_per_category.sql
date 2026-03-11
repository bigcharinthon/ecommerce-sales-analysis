/* ===============================
KPI 9: top_products_per_category
Business Question:
-Which product generates the highest revenue in each category?
=============================== */


WITH rank_product AS (
    SELECT
        p.product_category AS category,
        p.product_name AS product,
        SUM(o.total_sales) AS revenue,
        RANK() OVER (
            PARTITION BY p.product_category
            ORDER BY revenue DESC
        ) AS rank_in_category
    FROM orders o
    JOIN products p
        ON o.product_id = p.product_id
    GROUP BY
        p.product_category,
        p.product_name
)

SELECT
    category,
    product,
    revenue
FROM rank_product
WHERE rank_in_category = 1;

/*
Insight:
This query identifies the top-selling product in each category based on revenue.

It helps businesses understand which products act as "hero products"
within each category.

The results can support decisions on product promotion,
inventory planning, and category strategy.
*/
