-- Funnel: Page Views → Add to Cart → Purchases
SELECT device_type,
       marketing_channel,
       SUM(page_views) AS total_page_views,
       SUM(add_to_cart) AS total_add_to_cart,
       SUM(purchases) AS total_purchases,
       ROUND(SUM(add_to_cart)*1.0/SUM(page_views),4) AS add_to_cart_rate,
       ROUND(SUM(purchases)*1.0/SUM(add_to_cart),4) AS purchase_rate
FROM product_events
GROUP BY device_type, marketing_channel;

