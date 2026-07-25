# E-Commerce Sales Insights for Revenue Growth

An end-to-end analysis of Indian e-commerce sales data (Apr 2018 – Mar 2019), covering revenue, profitability, regional performance, and category trends — built with SQL, Excel, and Power BI.

## 📊 Overview

This project analyzes 500 orders (1,500 line items) across 3 product categories and 19 Indian states, identifying revenue drivers, profitability patterns, and performance against monthly sales targets.

**Key findings:**
- Apr–Sep 2018 ran at a loss almost every month; profitability reversed sharply from Oct 2018 onward, peaking in Jan–Mar 2019
- Electronics leads revenue (₹1.65L) but Clothing has the better profit margin (8.0% vs 6.3%)
- Madhya Pradesh and Maharashtra together drive ~46% of total revenue
- Electronics hit its monthly sales target 75% of the time; Clothing only 25%

## 🗂️ Repository Structure
├── data/
│ ├── raw/
│ │ ├── List_of_Orders.csv # Original data, as downloaded from Kaggle
│ │ ├── Order_Details.csv
│ │ └── Sales_target.csv
│ └── cleaned/
│ ├── List_of_Orders_clean.csv # Cleaned order-level data (500 orders)
│ ├── Order_Details_clean.csv # Cleaned line-item data (1,500 rows)
│ └── Sales_target_clean.csv # Monthly sales targets by category
├── sql/
│ └── queries.sql # All SQL analysis queries (joins, KPIs, trends)
├── excel/
│ └── Ecommerce_Sales_Insights.xlsx # Formula-driven Excel dashboard with KPIs & charts
├── powerbi/
│ └── Ecommerce_Dashboard.pbix # Power BI report (3 pages)
└── README.md
## 🛠️ Tools & Skills Used
- **SQL** (SQLite/MySQL) — joins, aggregations, KPI calculations
- **Excel** — PivotTables, SUMIF/INDEX-MATCH formulas, KPI dashboard, charts
- **Power BI** — data modeling, DAX measures, interactive report with slicers

## 📈 Data Source
Indian E-Commerce Sales dataset ([Kaggle](https://www.kaggle.com/datasets/benroshan/ecommerce-data)), consisting of three linked tables: Orders, Order Details, and Sales Targets. Original files are in `data/raw`; cleaned versions (nulls/blank rows removed) are in `data/cleaned`.

## 🔍 SQL Analysis
See `sql/queries.sql` for the full set of queries, covering:
- Overall KPIs (Total Revenue, Profit, AOV)
- Monthly revenue & profit trends
- Top sub-categories and categories by revenue/profit
- Regional (state-level) performance
- Top customers by revenue
- Sales target vs. actual, by month and category

## 📗 Excel Dashboard
`excel/Ecommerce_Sales_Insights.xlsx` contains raw data sheets plus a live, formula-driven Dashboard sheet (SUMIF/INDEX-MATCH — not pasted values) with KPI cards and 4 charts.

## 📊 Power BI Dashboard
A 3-page interactive report:
1. **Executive Overview** — KPI cards, monthly revenue/profit trend, category revenue
2. **Product & Regional Performance** — top sub-categories, states, customers, target vs. actual
3. **Key Insights** — written findings with supporting visuals and a state revenue map

Filterable by **Year**, **Month**, **State**, and **Category** via synced slicers.

## 🚀 How to Reproduce This Project

### 1. SQL
1. Install MySQL Workbench or use SQLite.
2. Create the database and import the three CSVs from `/data/cleaned` into matching tables.
3. Run the queries in `sql/queries.sql`.

### 2. Excel
1. Open `excel/Ecommerce_Sales_Insights.xlsx`.
2. Explore the `Dashboard` sheet — all values are live formulas over the raw data sheets.

### 3. Power BI
1. Install Power BI Desktop (free).
2. Open `powerbi/Ecommerce_Dashboard.pbix`.
3. Click **Refresh** to reload data if needed.
4. Explore using the Year/Month/State/Category slicers.

## 📌 Author
**Issak Kolusu** — [LinkedIn](https://linkedin.com/in/issak-kolusu) · [GitHub](https://github.com/Kolusuissak05)


