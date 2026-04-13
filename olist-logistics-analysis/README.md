# Olist Delivery Performance Analysis

This project analyzes delivery performance using the Brazilian Olist e-commerce dataset (~100,000 records).  
The goal was to understand how delivery delays impact customer satisfaction and identify where delays are most concentrated across regions and product categories.

**Tools used:** SQL, Python (pandas, numpy, matplotlib), Tableau

---

## What I Found

### 1. The overall delay rate is low, but the impact is significant
The overall delay rate is about **6.6%**, but the effect on customer satisfaction is clear.  
On-time deliveries have an average rating of about **4.2**, while delayed orders drop to about **2.3**.

### 2. Delay rates vary a lot by state
Some states have much higher delay rates than others.  
For example, the highest-delay states are well above the overall average, which shows that delivery performance is not evenly distributed across regions.

### 3. Some product categories are more delay-prone
Product categories such as **Furniture**, **Home Comfort**, and **Audio** have the highest delay rates.  
This makes sense because bulky items or products that need more careful handling are harder to deliver on time.

---

## Dashboard Preview

![Dashboard Preview](images/dashboard_final.png?1)

**Live Dashboard:** [View on Tableau Public](https://public.tableau.com/app/profile/huiyi.chen/viz/OlistDeliveryPerformanceDashboard_17761060332310/DeliveryPerformanceOverview)  
(Interactive version of the dashboard built in Tableau)

---

## Tools & Methods

- **SQL**: joined and aggregated multiple tables
- **Python**: data cleaning, validation, and exploratory analysis
- **pandas / numpy**: data manipulation
- **matplotlib**: initial visualizations
- **Tableau**: dashboard design and final presentation
- **Data**: the public Olist Brazilian E-commerce dataset on Kaggle

---

## Key Takeaway

Delivery delays are not evenly distributed.  
They are concentrated in certain states and product categories, and they have a strong negative effect on customer ratings.  
This makes those high-delay regions and product groups natural targets for further operational improvement.

---

