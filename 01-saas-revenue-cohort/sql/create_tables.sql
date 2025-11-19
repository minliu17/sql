-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    signup_date DATE,
    segment VARCHAR(50),
    region VARCHAR(50)
);

-- Subscriptions Table
CREATE TABLE subscriptions (
    subscription_id INT PRIMARY KEY,
    customer_id INT,
    start_date DATE,
    end_date DATE,
    plan VARCHAR(50)
);

-- Transactions Table
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    subscription_id INT,
    amount DECIMAL(10,2),
    transaction_date DATE
);

