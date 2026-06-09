-- Query 1: Total Sales by Region
SELECT Region, SUM(Sales) AS total_sales
FROM superstore.`sample - superstore`
GROUP BY Region;

-- Query 2: Profit by Category
SELECT Category, SUM(Profit) AS total_profit
FROM superstore.`sample - superstore`
GROUP BY Category
ORDER BY total_profit DESC;

-- Query 3: Monthly Sales Trend
SELECT MONTH(`Order Date`) AS month, SUM(Sales) AS total_sales
FROM superstore.`sample - superstore`
GROUP BY month
ORDER BY month;

-- Query 4: Discount Impact on Profit
SELECT Discount, AVG(Profit) AS avg_profit
FROM superstore.`sample - superstore`
GROUP BY Discount
ORDER BY Discount;