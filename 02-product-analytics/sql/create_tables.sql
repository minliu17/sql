CREATE TABLE product_events (
    event_id INT PRIMARY KEY,
    event_date DATE,
    device_type VARCHAR(50),
    marketing_channel VARCHAR(50),
    page_views INT,
    add_to_cart INT,
    purchases INT,
    conversion_rate DECIMAL(5,4)
);

