/* Conversion Funnel */
SELECT
    event_date,
    device_type,
    marketing_channel,
    SUM(page_views) AS views,
    SUM(add_to_cart) AS carts,
    SUM(purchases) AS purchases,
    SUM(purchases)::decimal / NULLIF(SUM(page_views),0) AS conversion_rate
FROM product_events
GROUP BY 1,2,3
ORDER BY event_date;


