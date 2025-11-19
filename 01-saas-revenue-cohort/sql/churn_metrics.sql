/* Find churned customers (no transactions in last 60 days) */
WITH last_activity AS (
    SELECT
        s.customer_id,
        MAX(t.transaction_date) AS last_tx
    FROM subscriptions s
    LEFT JOIN transactions t ON s.subscription_id = t.subscription_id
    GROUP BY 1
),

churned AS (
    SELECT
        customer_id,
        last_tx,
        CASE WHEN last_tx < CURRENT_DATE - INTERVAL '60 days'
             THEN 1 ELSE 0 END AS is_churned
    FROM last_activity
)

SELECT
    is_churned,
    COUNT(*) AS customer_count
FROM churned
GROUP BY 1;

