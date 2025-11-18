# SaaS Revenue Cohort & Churn Analysis

This project demonstrates revenue analytics and customer cohort analysis for a SaaS business.

## Business Questions
- How do customer cohorts perform over time?
- What is the monthly recurring revenue (MRR)?
- What is the churn & retention rate?
- Which customer segments contribute the most revenue?

## SQL Scripts
- `create_tables.sql` → Create tables and load CSV data
- `cohort_analysis.sql` → Cohort and retention queries
- `revenue_metrics.sql` → Monthly/segment revenue
- `churn_metrics.sql` → Customer churn analysis
- `segmentation.sql` → Customer segmentation by MRR and churn

## Data
- `customers.csv` → Customer ID, signup date, segment, region
- `subscriptions.csv` → Subscription ID, customer ID, start/end dates, plan
- `transactions.csv` → Transaction ID, subscription ID, amount, date
