/* =====================================================
   E-commerce Product & Sales Analysis
   Tool: SQLite
   ===================================================== */

/* -------------------------------
   Q1: Total Revenue
   ------------------------------- */
SELECT
    SUM(oi.quantity * oi.price) AS total_revenue
FROM order_items oi;


/* -------------------------------
   Q2: Monthly Revenue
   ------------------------------- */
SELECT
    strftime('%Y-%m', o.order_date) AS month,
    SUM(oi.quantity * oi.price) AS monthly_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month;


/* -------------------------------
   Q3: Top 5 Products by Revenue
   ------------------------------- */
SELECT
    p.product_name,
    SUM(oi.quantity * oi.price) AS revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 5;


/* -------------------------------
   Q4: Bottom 5 Products by Revenue
   ------------------------------- */
SELECT
    p.product_name,
    SUM(oi.quantity * oi.price) AS revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue ASC
LIMIT 5;


/* -------------------------------
   Q5: Repeat Customers
   Customers with more than 1 order
   ------------------------------- */
SELECT
    c.customer_id,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) > 1
ORDER BY total_orders DESC;


/* -------------------------------
   Q6: Revenue by Product Category
   (Support Product Categorization)
   ------------------------------- */
SELECT
    p.category,
    SUM(oi.quantity * oi.price) AS category_revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;

