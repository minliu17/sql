/* Monthly Recurring Revenue (MRR) */
SELECT
    DATE_TRUNC('month', transaction_date) AS month,
    SUM(amount) AS total_mrr
FROM transactions
GROUP BY 1
ORDER BY 1;

/* ARPU — Average revenue per user */
SELECT
    DATE_TRUNC('month', t.transaction_date) AS month,
    SUM(t.amount) / COUNT(DISTINCT s.customer_id) AS arpu
FROM transactions t
JOIN subscriptions s ON t.subscription_id = s.subscription_id
GROUP BY 1
ORDER BY 1;

/* Revenue by Region */
SELECT
    c.region,
    DATE_TRUNC('month', t.transaction_date) AS month,
    SUM(t.amount) AS revenue
FROM transactions t
JOIN subscriptions s ON t.subscription_id = s.subscription_id
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY 1,2
ORDER BY region, month;

