

# 🚀 Mobi-Insights 📊

**An Interactive Power BI Dashboard for Mobile Sales and Market Analytics**

---

## 📌 Project Overview

**Mobi-Insights** is a dynamic, data-driven Power BI dashboard that analyzes mobile phone sales, features, pricing trends, and market insights. This project demonstrates the power of interactive data storytelling using advanced **DAX calculations**, **KPI visuals**, and **custom slicers/cards** for deep business intelligence.

🔍 **Goal**: To provide stakeholders with meaningful insights into mobile phone data to aid in strategic decision-making and competitive analysis.

---

## 📦 Data Source

- 📁 **Dataset**: [Kaggle - ](https://www.kaggle.com/datasets/iabhishekofficial/mobile-price-classification)Mobile Sale Dataset
- 📊 Contains: Transaction ID,Date,Day Name,Brand,Units Sold,Price Per Unit,Customer Name,Customer Age,	City,	Payment Method,Customer Ratings,Mobile Model

## 🔧 Features & Tools Used

| Category             | Details                                                                  |
| -------------------- | ------------------------------------------------------------------------ |
| 📌 Power BI Features | Tables, KPIs, Slicers, Cards, Stacked Bars, Pie Charts, Drill-through    |
| 🧮 DAX Measures      | Custom Calculations for Total Sales, Average Price, Price Range Analysis |
| 🧠 Interactivity     | Filters by Brand, RAM, Battery Power, Price Range, and more              |
| 📈 Visualization     | Clean, minimal, and professional dashboards                              |

---

## 📊 Dashboard Insights

### ✅ Key Highlights:

- **KPI Indicators**: Track average mobile price, max RAM devices, and battery performance.
- **Slicers**: Interactively filter data by brand, price range, camera specs, and more.
- **Category-wise Analysis**: Visual comparison of features like battery vs price, RAM vs sales.
- **Custom Cards**: Highlighted summary stats for quick business decision-making.

![Dashboard Preview](dashboard_preview.png) *(replace with your actual screenshot)*

---

## ⚙️ DAX Measures Examples

```DAX
-- Total Mobile Sales
TotalSales = SUM('MobileData'[Sales])

-- Average Price by Brand
AveragePrice = AVERAGE('MobileData'[Price])

-- High RAM Flag
HighRAM = IF('MobileData'[RAM] >= 6, "High", "Low")
```
