/* Day-level retention approximation */
WITH cohort AS (
    SELECT
        event_date AS signup_day,
        device_type,
        marketing_channel
    FROM product_events
    WHERE page_views > 0
),

activity AS (
    SELECT
        c.signup_day,
        p.event_date,
        p.device_type,
        p.marketing_channel
    FROM cohort c
    JOIN product_events p
        ON c.device_type = p.device_type
        AND c.marketing_channel = p.marketing_channel
        AND p.event_date >= c.signup_day
)

SELECT
    signup_day,
    event_date,
    EXTRACT(DAY FROM event_date - signup_day) AS days_after_signup,
    COUNT(*) AS active_users
FROM activity
GROUP BY 1,2
ORDER BY signup_day, days_after_signup;

