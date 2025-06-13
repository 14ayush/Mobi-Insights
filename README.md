
# 📱 Mobi-Insights – Power BI Dashboard

### 🔍 **Data-Driven Business Intelligence for Mobile Sales & Customer Analytics**

---

## 🧠 Project Summary

**Mobi-Insights** is a fully interactive and insights-rich Power BI dashboard designed to analyze mobile sales and customer behavior using real-time business metrics. Leveraging **DAX formulas**, **slicers**, **KPIs**, and visual storytelling, this project delivers actionable insights for marketing, sales, and executive teams.

📂 **Dataset Source**: [Kaggle – Mobile Sales Dataset]
📈 **Tool Used**: Power BI Desktop

---

## 📊 Dataset Description

The dataset contains real-time transactional sales data for mobile phones across cities, including customer demographics and preferences.

| Column Name                                | Description                                 |
| ------------------------------------------ | ------------------------------------------- |
| `Transaction ID`                         | Unique identifier for each transaction      |
| `Day`, `Month`, `Year`, `Day Name` | Date information for time-series insights   |
| `Brand`                                  | Mobile phone brand (e.g., Samsung, Apple)   |
| `Mobile Model`                           | Specific model sold                         |
| `Units Sold`                             | Number of units in a transaction            |
| `Price Per Unit`                         | Selling price of each unit                  |
| `Customer Name`                          | Buyer’s name                               |
| `Customer Age`                           | Buyer’s age group                          |
| `City`                                   | Location of purchase                        |
| `Payment Method`                         | Method of payment (Cash, UPI, Credit, etc.) |
| `Customer Ratings`                       | Rating given by the customer (1-5 stars)    |

---

## 🚀 Key Features

✅ **KPI Cards**

- Total Revenue
- Average Customer Age
- Best-Selling Brand
- Highest Rated Model

✅ **Interactive Slicers**

- Filter by Brand, City, Day Name, Age Group, Payment Method

✅ **DAX Measures**

- Revenue = `Units Sold * Price Per Unit`
- Average Rating by Brand
- Monthly Sales Trend
- Top 5 Cities by Revenue

✅ **Time Series Analysis**

- Sales trend by Month/Day Name
- Peak Sales Day of the Week

✅ **Customer Insights**

- Age group buying trends
- Preferred payment methods
- City-wise customer ratings

---

## 📈 Visualizations

| Page                  | Visuals                         |
| --------------------- | ------------------------------- |
| Overview Dashboard    | KPIs, Bar & Line Charts, Cards  |
| Sales by Brand        | Brand-Wise Units Sold & Revenue |
| Customer Demographics | Age Distribution, Ratings       |
| Geo Analytics         | Map by City and Sales           |
| Time Insights         | Heatmap of Sales by Day/Month   |

---

## 🧮 Sample DAX Formulas

```DAX
-- Total Revenue
Total Revenue = SUMX('Sales', 'Sales'[Units Sold] * 'Sales'[Price Per Unit])

-- Average Rating by Brand
Average Rating = AVERAGEX(FILTER('Sales', 'Sales'[Brand] = SELECTEDVALUE('Sales'[Brand])), 'Sales'[Customer Ratings])

-- Monthly Sales Trend
Monthly Sales = CALCULATE([Total Revenue], ALLEXCEPT('Sales', 'Sales'[Month]))
```
