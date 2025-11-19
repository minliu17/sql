/* Build monthly cohort groups */
WITH customer_cohort AS (
    SELECT
        customer_id,
        DATE_TRUNC('month', signup_date) AS cohort_month
    FROM customers
),

activity AS (
    SELECT
        c.customer_id,
        DATE_TRUNC('month', t.transaction_date) AS active_month,
        cc.cohort_month
    FROM transactions t
    JOIN subscriptions s ON t.subscription_id = s.subscription_id
    JOIN customers c ON s.customer_id = c.customer_id
    JOIN customer_cohort cc ON c.customer_id = cc.customer_id
),

cohort_calc AS (
    SELECT
        cohort_month,
        active_month,
        COUNT(DISTINCT customer_id) AS active_customers
    FROM activity
    GROUP BY 1,2
),

cohort_index AS (
    SELECT
        cohort_month,
        active_month,
        active_customers,
        EXTRACT(
            MONTH FROM (active_month - cohort_month)
        ) AS months_since_signup
    FROM cohort_calc
)

SELECT *
FROM cohort_index
ORDER BY cohort_month, months_since_signup;


