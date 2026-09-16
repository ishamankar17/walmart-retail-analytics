# Walmart Retail Analytics

### Sales Trends, Store Performance & Sales Prediction

## Project Overview

This project analyzes Walmart's historical weekly sales data to understand **sales trends, store performance, holiday impact, and the relationship between sales and external factors**.

The analysis combines **Oracle SQL for data preparation, Power BI for interactive visualization, and Python for exploratory analysis and machine learning**.

## Dataset

The project uses the **Walmart Store Sales Dataset** from Kaggle, containing **421,570 sales records from 2010–2012**.

The datasets include:

* **Stores:** Store ID, store type, and store size
* **Features:** Temperature, fuel price, CPI, unemployment, holiday indicators, and markdown spending
* **Sales:** Weekly sales, department, store, and holiday information

## Analysis Performed

* Analyzed **weekly and monthly sales trends**
* Compared **sales performance across stores and store types**
* Evaluated the **impact of holidays on weekly sales**
* Studied the relationship between **sales and external factors** such as temperature, fuel price, CPI, and unemployment
* Analyzed **promotional markdown spending** and its relationship with sales
* Identified the **top-performing stores and departments**
* Performed **correlation and feature importance analysis**
* Developed a **Random Forest Regression model** to predict weekly sales

## Technologies Used

* **Oracle SQL** — Data cleaning, validation, joining datasets, and analysis
* **Power BI** — Interactive dashboards and KPI visualization
* **Python** — EDA, correlation analysis, feature importance, and machine learning
* **Pandas & NumPy** — Data manipulation
* **Matplotlib** — Data visualization
* **Scikit-learn** — Random Forest Regression and model evaluation

##  Model Performance

| Metric   |      Score |
| -------- | ---------: |
| R² Score | **97.67%** |
| RMSE     |  **7,112** |
| MAE      |  **3,961** |

## 📸 Dashboard Preview

### Executive Summary

<img width="900" src="https://github.com/user-attachments/assets/3386faeb-38ab-42b2-9364-082d40bef668">

### Sales Performance

<img width="900" src="https://github.com/user-attachments/assets/9e7c3608-a2bd-4ebc-8ae9-a24efc9102a0">

### Store Analysis

<img width="900" src="https://github.com/user-attachments/assets/006f4e2f-9dcd-4f70-bd0f-2e9ab8c379fb">

### Holiday Impact

<img width="900" src="https://github.com/user-attachments/assets/2b145bd1-abf0-492b-bb8e-95290c2673c6">

### External Factors

<img width="900" src="https://github.com/user-attachments/assets/bab91acb-c9f5-4ba0-b38e-c01afdd6992e">

### Markdown Analysis

<img width="900" src="https://github.com/user-attachments/assets/4ef0a5ed-e098-42fa-91ac-ffe0fff971d9" />

## Key Insights

- **Sales Performance:** Sales show strong seasonal variation, with **Q4 consistently recording the highest quarterly sales**. Department 92 and Store 20 are among the leading contributors, while 2012 data is partial.
- **Store Analysis:** **Type A stores generate the majority of total sales** and have the largest average store size. Store 20 is the highest-performing store by total sales, showing a clear association between store scale and sales performance.
- **Holiday Impact:** Holiday weeks contribute significantly to sales, with **November showing the strongest holiday sales spike** across the available years. Holiday periods generate substantially higher sales than non-holiday weeks.
- **External Factors:** Fuel prices increased over the period, while unemployment generally declined. The dashboard examines how **CPI, fuel prices, and unemployment relate to sales performance**.
- **Markdown Analysis:** Markdown activity represents a significant promotional investment. **Higher markdown spending does not always correspond to higher total sales**, suggesting that promotional effectiveness should be evaluated alongside sales outcomes.

### Overall Business Insight

**Sales performance is influenced by a combination of seasonality, store characteristics, holiday demand, external factors, and promotional activity rather than a single factor.**

## Dataset Scope & Limitations

- **Dataset:** Historical Walmart weekly sales data covering **45 stores and multiple departments from 2010–2012**.
- **Analysis Scope:** Sales performance, store characteristics, holiday effects, external factors, and markdown activity.
- **Key Limitation:** **2012 contains partial-year data (January–October)**, so annual comparisons with 2010 and 2011 should be interpreted carefully.
- **Interpretation:** The dashboard identifies **historical trends, patterns, and relationships**. These relationships do not necessarily indicate causation.
- **Business Use:** Findings are intended for **exploratory analysis and decision support**, not as definitive forecasts or causal conclusions.
