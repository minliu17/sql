/* Add-to-cart usage by device & channel */
SELECT
    device_type,
    marketing_channel,
    SUM(add_to_cart) AS total_add_to_cart,
    SUM(page_views) AS total_views,
    SUM(add_to_cart)::decimal / NULLIF(SUM(page_views),0) AS add_to_cart_rate
FROM product_events
GROUP BY 1,2
ORDER BY add_to_cart_rate DESC;

