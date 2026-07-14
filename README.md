# 🛒 Walmart Retail Analytics
## Sales Trends, Store Performance & Sales Forecasting

**Tools:** Oracle SQL | Power BI | Python  
**Dataset:** 421,570 Sales Records (2010–2012)  
**Source:** Walmart Store Sales Dataset (Kaggle)

---
# 📌 Project Overview

This project analyzes Walmart retail sales data to evaluate store performance, identify sales trends, measure holiday impact, and understand how external factors influence weekly sales.

The workflow includes:

**Data Cleaning (Oracle SQL) → Dashboard Development (Power BI) → Exploratory Data Analysis (Python) → Machine Learning Sales Prediction**

---

# 📸 Dashboard Preview

## Executive Summary
<img width="900" src="https://github.com/user-attachments/assets/68af2791-4c2c-4155-9eab-a13210fd5b06">

## Sales Performance
<img width="900" src="https://github.com/user-attachments/assets/7d0bb540-a208-401e-b16a-93b9830cb77c">

## Store Analysis
<img width="900" src="https://github.com/user-attachments/assets/6858c61f-c6ef-48fb-8201-345426a9478e">

## Holiday Impact
<img width="900" src="https://github.com/user-attachments/assets/bd98619d-ac52-4073-b97d-9b0540a5e414">

## External Factors
<img width="900" src="https://github.com/user-attachments/assets/53af334f-e80e-4d3d-a706-c72b6824e1e8">

## Markdown Analysis
<img width="900" src="https://github.com/user-attachments/assets/e49e20ed-3560-477b-9ec1-452af1149793">


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
