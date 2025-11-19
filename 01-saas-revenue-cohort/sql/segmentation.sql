/* Revenue by Segment */
SELECT
    c.segment,
    DATE_TRUNC('month', t.transaction_date) AS month,
    SUM(t.amount) AS revenue
FROM transactions t
JOIN subscriptions s ON t.subscription_id = s.subscription_id
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY 1,2
ORDER BY segment, month;

/* Segmented ARPU */
SELECT
    c.segment,
    SUM(t.amount) / COUNT(DISTINCT c.customer_id) AS arpu
FROM transactions t
JOIN subscriptions s ON t.subscription_id = s.subscription_id
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY 1;

