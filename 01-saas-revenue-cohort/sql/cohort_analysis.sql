-- Example: Monthly Cohort Retention
WITH first_month AS (
    SELECT customer_id,
           MIN(DATE_TRUNC('month', signup_date)) AS cohort_month
    FROM customers
    GROUP BY customer_id
)
SELECT f.cohort_month,
       DATE_TRUNC('month', t.transaction_date) AS month,
       COUNT(DISTINCT t.customer_id) AS active_customers
FROM first_month f
JOIN subscriptions s ON s.customer_id = f.customer_id
JOIN transactions t ON t.subscription_id = s.subscription_id
GROUP BY f.cohort_month, DATE_TRUNC('month', t.transaction_date)
ORDER BY f.cohort_month, month;

