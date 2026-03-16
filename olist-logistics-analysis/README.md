# Olist Logistics Delay Analysis

This project explores delivery delays in the Brazilian Olist 
e-commerce dataset. I wanted to understand what actually drives 
late deliveries — whether it's geography, product type, or 
something else.

**Tools:** SQL (PostgreSQL via DBeaver), Python (pandas, 
matplotlib), Jupyter Notebook

---

## What I Found

### 1. Overall delay rate is low, but the impact is significant

About 8% of delivered orders arrived after the estimated 
delivery date. That sounds small, but the effect on customer 
satisfaction is striking: late orders averaged a review score 
of **2.6 out of 5**, compared to **4.3** for on-time orders. 
Delivery timing is clearly one of the biggest drivers of 
whether a customer leaves a good or bad review.

### 2. Geography matters

Delay rates vary a lot by state. Large logistics hubs tend to 
perform better — likely because of better infrastructure and 
shorter distances to fulfillment centers. Some smaller or more 
remote states show noticeably higher delay rates, which may 
reflect differences in logistics infrastructure and delivery 
distance.

### 3. Some product categories are consistently late

Audio and fashion-related items show higher-than-average delay 
rates. This could be due to shipping complexity, supplier 
locations, or how these items are packaged and handled. Either 
way, product type is not a neutral factor in delivery 
performance.

---

## What I Used

- SQL to query and aggregate the data across 8 tables
- Python (pandas + matplotlib) to visualize the results
- The public Olist Brazilian E-commerce dataset on Kaggle

---


## Notes

This started as a SQL practice project but turned into 
something I actually found interesting. The review score gap 
between late and on-time deliveries (2.6 vs 4.3) was bigger 
than I expected — it suggests that for e-commerce platforms, 
hitting the estimated delivery date matters as much as the 
product itself.

Next I want to look at whether seller shipping speed or carrier 
performance is the bigger factor behind delays.