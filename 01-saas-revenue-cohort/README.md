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

## Others
Here is a **clean, ready-to-paste “Cohort Analysis Interpretation” section** you can add directly to your **README.md for Project 01 (Customer Churn Analysis)**.

---

## 📊 Cohort Analysis – Business Interpretation

The cohort analysis reveals clear retention patterns across customer groups based on the month they joined the platform. Each cohort contains customers who started in the same month, and the heatmap tracks how many of them remain active in each subsequent month.

### **Key Insights**

#### **1. Sharp Drop-Off After the First Month**

Across nearly all cohorts, retention drops significantly from Month 0 → Month 1.
This indicates that many customers churn very early in the lifecycle, suggesting issues related to:

* onboarding experience,
* unclear product value,
* or lack of early engagement.

**Business implication:**
Improving Day 0 – Day 30 engagement can dramatically improve overall retention.

---

#### **2. Stabilization After Month 2**

For the customers who remain past Month 2, retention stabilizes at a lower but steady level.
This suggests a subset of customers finds long-term value and becomes loyal.

**Business implication:**
This stable population has strong LTV potential. Creating loyalty programs or long-term incentives can help nurture this group.

---

#### **3. Cohort Differences Indicate Seasonal or Campaign Effects**

Some cohorts show slightly better retention in the early months than others.
This could mean:

* Certain acquisition channels bring **higher-quality customers**
* Pricing or promotions during specific months affect retention
* Product updates may have positively (or negatively) influenced user experience

**Business implication:**
Marketing and product teams should investigate what differed in high-retention cohorts and replicate those conditions.

---

#### **4. No Meaningful Negative Month Values After Cleaning**

If the dataset originally had negative values for “month_diff,” that indicates data quality issues—for example, missing or reversed timestamps.
After correction, the cohort model reflects clean, chronological customer lifecycle behavior.

**Business implication:**
Accurate lifecycle metrics depend heavily on correct timestamps. Future data collection and ETL processes should validate date fields earlier.

---

#### **5. Subscription Model Confirmation**

The retention pattern is consistent with **monthly subscription businesses**:

* Heavy churn in first month
* Medium churn in next 1–2 months
* A stable core of long-term subscribers

**Business implication:**
Management can focus resources on:

* Reducing early churn
* Increasing conversion from trial to paid
* Enhancing continuous value delivery for long-term users

---

### **Overall Takeaway**

The cohort analysis provides a clear picture of customer lifecycle behavior. The main opportunity for improvement lies in the early lifecycle stages—if the business can improve retention in the first 2 months, overall customer lifetime value (LTV) and revenue will rise significantly.

---

If you want, I can **insert this into your README.md on the canvas** or **format it with GitHub badges, tables, or visuals**.
