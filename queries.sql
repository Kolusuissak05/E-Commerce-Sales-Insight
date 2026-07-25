-- E-Commerce Sales Insights for Revenue Growth
-- SQL Analysis Queries
-- Tables: orders(Order ID, Order Date, CustomerName, State, City)
--         order_details(Order ID, Amount, Profit, Quantity, Category, Sub-Category)
--         sales_target(Month of Order Date, Category, Target)

-- 1. Overall KPIs: Total Revenue, Total Profit, Total Orders, Average Order Value (AOV)
SELECT ROUND(SUM(od.Amount),2) AS total_revenue,
       ROUND(SUM(od.Profit),2) AS total_profit,
       COUNT(DISTINCT o."Order ID") AS total_orders,
       ROUND(SUM(od.Amount)*1.0/COUNT(DISTINCT o."Order ID"),2) AS avg_order_value
FROM orders o
JOIN order_details od ON o."Order ID" = od."Order ID";

-- 2. Monthly Revenue & Profit Trend
SELECT strftime('%Y-%m', o."Order Date") AS month,
       ROUND(SUM(od.Amount),2) AS revenue,
       ROUND(SUM(od.Profit),2) AS profit,
       COUNT(DISTINCT o."Order ID") AS orders
FROM orders o
JOIN order_details od ON o."Order ID" = od."Order ID"
GROUP BY month
ORDER BY month;

-- 3. Top Sub-Categories by Revenue and Profit
SELECT "Sub-Category",
       ROUND(SUM(Amount),2) AS revenue,
       ROUND(SUM(Profit),2) AS profit,
       SUM(Quantity) AS units_sold
FROM order_details
GROUP BY "Sub-Category"
ORDER BY revenue DESC;

-- 4. Category-Level Performance
SELECT Category,
       ROUND(SUM(Amount),2) AS revenue,
       ROUND(SUM(Profit),2) AS profit
FROM order_details
GROUP BY Category
ORDER BY revenue DESC;

-- 5. Revenue by State (Regional Performance)
SELECT o.State,
       ROUND(SUM(od.Amount),2) AS revenue,
       COUNT(DISTINCT o."Order ID") AS orders
FROM orders o
JOIN order_details od ON o."Order ID" = od."Order ID"
GROUP BY o.State
ORDER BY revenue DESC;

-- 6. Top 15 Customers by Revenue (CLV proxy)
SELECT o.CustomerName,
       ROUND(SUM(od.Amount),2) AS revenue,
       COUNT(DISTINCT o."Order ID") AS orders
FROM orders o
JOIN order_details od ON o."Order ID" = od."Order ID"
GROUP BY o.CustomerName
ORDER BY revenue DESC
LIMIT 15;

-- 7. Sales Target vs Actual by Month & Category
SELECT st."Month of Order Date",
       st.Category,
       st.Target,
       ROUND(SUM(od.Amount),2) AS actual_sales,
       ROUND(SUM(od.Amount) - st.Target,2) AS variance
FROM sales_target st
LEFT JOIN order_details od ON od.Category = st.Category
LEFT JOIN orders o ON o."Order ID" = od."Order ID"
  AND strftime('%m', o."Order Date") = CASE substr(st."Month of Order Date",1,3)
        WHEN 'Jan' THEN '01' WHEN 'Feb' THEN '02' WHEN 'Mar' THEN '03'
        WHEN 'Apr' THEN '04' WHEN 'May' THEN '05' WHEN 'Jun' THEN '06'
        WHEN 'Jul' THEN '07' WHEN 'Aug' THEN '08' WHEN 'Sep' THEN '09'
        WHEN 'Oct' THEN '10' WHEN 'Nov' THEN '11' WHEN 'Dec' THEN '12' END
GROUP BY st."Month of Order Date", st.Category, st.Target
ORDER BY st."Month of Order Date";
