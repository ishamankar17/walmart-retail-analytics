# 🛒 Walmart Retail Analytics

### Sales Trends, Store Performance & Sales Forecasting

---

**Tools Used:** Oracle SQL | Power BI | Python
**Dataset Size:** 421,570 Sales Records
**Period Covered:** 2010–2012
**Source:** Walmart Store Sales Dataset (Kaggle)

---

## 📌 Project Overview

This project analyzes Walmart's retail sales data to understand store performance, sales trends, holiday impact, and factors affecting revenue.

The project follows a complete data analytics workflow:

**Data Collection → Data Cleaning (SQL) → Dashboard Development (Power BI) → Data Analysis (Python) → Sales Prediction (Machine Learning)**

The goal was to transform raw sales data into meaningful business insights and build a model capable of predicting weekly sales.

---

## 📁 Project Structure

```text
walmart-retail-analytics/
│
├── raw_data/
├── sql_scripts/
├── dashboard/
├── notebooks/
├── screenshots/
└── README.md
```

---

## 📊 Dataset Information

The project uses three datasets:

### Stores Data

Contains store information such as:

* Store ID
* Store Type (A, B, C)
* Store Size

### Features Data

Contains external factors that may influence sales:

* Temperature
* Fuel Price
* CPI
* Unemployment Rate
* Holiday Indicator
* Promotional Markdown Spending

### Sales Data

Contains:

* Store ID
* Department ID
* Weekly Sales
* Holiday Information

---

## 🧹 Data Cleaning (Oracle SQL)

The raw data was cleaned and prepared using Oracle SQL.

### Cleaning Steps

* Removed invalid values and formatting issues
* Standardized text fields
* Filled missing promotional spending values
* Handled missing CPI and unemployment records
* Identified and flagged negative sales records
* Renamed reserved Oracle column names
* Merged all datasets into a single analysis table

### Final Dataset

* 421,570 records
* 22 columns
* No duplicates
* No missing values

---

## 📈 Power BI Dashboard

An interactive 6-page dashboard was developed to monitor:

1. Executive Sales Overview
2. Sales Performance Trends
3. Store Performance Analysis
4. Holiday Impact Analysis
5. External Factors Analysis
6. Promotional Markdown Analysis

The dashboard allows users to explore sales performance across stores, departments, and time periods.

---

## 🐍 Python Analysis

Python was used for:

* Exploratory Data Analysis (EDA)
* Trend Analysis
* Correlation Analysis
* Sales Distribution Analysis
* Machine Learning Model Development

### Machine Learning Model

A Random Forest Regression model was developed to predict weekly sales.

**Results:**

* R² Score: 97.67%
* RMSE: $7,112
* MAE: $3,961

The model successfully captured most sales patterns and produced highly accurate predictions.

---

## 🔍 Key Business Insights

* Walmart generated approximately **$6.74 Billion** in sales during the period analyzed.
* **Store Type A** contributed the largest share of revenue.
* **Store 20** was the highest-performing store.
* Holiday weeks generated significantly higher sales than regular weeks.
* November showed the strongest sales performance due to holiday shopping.
* Promotional markdown spending increased significantly after 2011.
* Department number was the most important factor in predicting sales.

---

## 💡 Skills Demonstrated

* SQL Data Cleaning & Validation
* Data Modeling
* Power BI Dashboard Development
* Business Intelligence Reporting
* Python Data Analysis
* Machine Learning
* Data Storytelling

---

## 🚀 Future Improvements

* Time Series Sales Forecasting
* XGBoost Model Comparison
* Store Segmentation using Clustering
* Advanced Model Explainability

---

## 📷 Dashboard Preview

<img width="900" height="500" alt="image" src="https://github.com/user-attachments/assets/5bf55ae2-df8e-4b23-b1c9-ee734dc2fa33" />

---

## ⚠️ Disclaimer

This project uses historical Walmart sales data for educational and portfolio purposes.
