/* ===============================
KPI 8: Payment Method Usage
Business Question:
-Which payment methods are used most frequently?
=============================== */

SELECT
    payment_method,
    COUNT(*) AS payment_count
FROM payments
GROUP BY payment_method;

/*
Insight:
This query analyzes the usage of different payment methods.
It helps businesses understand customer payment preferences.

The results can support decisions on optimizing payment
options and improving the checkout experience.
*/
