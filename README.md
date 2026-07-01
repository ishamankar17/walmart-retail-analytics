# 🛒 Walmart Retail Analytics
## Sales Trends, Store Performance & Sales Forecasting

**Tools:** Oracle SQL | Power BI | Python  
**Dataset:** 421,570 Sales Records (2010–2012)  
**Source:** Walmart Store Sales Dataset (Kaggle)

---

# 📸 Dashboard Preview

## Executive Summary
<img width="900" src="https://github.com/user-attachments/assets/23e3c9da-045e-4ae7-b887-604d21a62234">

## Sales Performance
<img width="900" src="https://github.com/user-attachments/assets/5acfe17d-fb41-49a5-b05d-eaf9210c18f6">

## Store Analysis
<img width="900" src="https://github.com/user-attachments/assets/4677d63f-4f0a-47d0-b76d-0bbbeb0fed55">

## Holiday Impact
<img width="900" src="https://github.com/user-attachments/assets/350e8171-6803-412e-9681-783349b82b9c">

## External Factors
<img width="900" src="https://github.com/user-attachments/assets/e329a855-4513-46f9-8971-c2476d9b6266">

## Markdown Analysis
<img width="900" src="https://github.com/user-attachments/assets/5f01b0bf-e6c9-4df3-a797-bfbf846106ea">

---

# 📌 Project Overview

This project analyzes Walmart retail sales data to evaluate store performance, identify sales trends, measure holiday impact, and understand how external factors influence weekly sales.

The workflow includes:

**Data Cleaning (Oracle SQL) → Dashboard Development (Power BI) → Exploratory Data Analysis (Python) → Machine Learning Sales Prediction**

---

# 📊 Dataset

The project combines three datasets:

- **Stores:** Store ID, Type, Size
- **Features:** Temperature, Fuel Price, CPI, Unemployment, Holiday Flag, Markdown Spending
- **Sales:** Weekly Sales, Department, Store, Holiday Information

Final dataset:

- **421,570 records**
- **22 columns**
- No duplicates
- No missing values

---

# 🧹 Data Preparation (Oracle SQL)

Performed:

- Data cleaning and validation
- Missing value handling
- Standardization
- Negative sales detection
- Dataset merging
- Final analysis table creation

---

# 📈 Power BI Dashboard

Interactive dashboard with six report pages:

- Executive Overview
- Sales Trends
- Store Performance
- Holiday Analysis
- External Factors
- Promotional Markdown Analysis

---

# 🐍 Python Analysis & Machine Learning

Performed:

- Exploratory Data Analysis (EDA)
- Correlation Analysis
- Sales Trend Analysis
- Feature Importance
- Random Forest Regression for Weekly Sales Prediction

### Model Performance

| Metric | Value |
|---------|---------|
| R² Score | **97.67%** |
| RMSE | **7,112** |
| MAE | **3,961** |

---

# 🔍 Key Insights

- Generated approximately **$6.74 Billion** in total sales
- **Store Type A** produced the highest revenue
- **Store 20** achieved the highest sales
- Holiday weeks consistently outperformed regular weeks
- November recorded peak sales due to seasonal demand
- Promotional markdown spending increased after 2011
- Department ID was the strongest predictor of weekly sales

---

# 💡 Skills Demonstrated

- Oracle SQL
- Power BI
- Python
- Data Cleaning
- Data Visualization
- Business Intelligence
- Machine Learning
- Data Storytelling

---

# 🚀 Future Improvements

- Time Series Forecasting
- XGBoost Comparison
- Store Clustering
- Model Explainability (SHAP)

---

*Built as part of my Data Analytics Portfolio.*
