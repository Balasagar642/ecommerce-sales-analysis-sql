-- 1. View the entire dataset
SELECT * FROM train;

2. Check the available columns

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'train';

SELECT Category, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Category
ORDER BY Total_Sales DESC;

3. Monthly Sales Trend

SELECT 
    FORMAT(Order_Date, 'yyyy-MM') AS Order_Month,
    SUM(Sales) AS Monthly_Sales
FROM train
GROUP BY FORMAT(Order_Date, 'yyyy-MM')
ORDER BY Order_Month;

4. Top 5 Cities by Sales

SELECT TOP 5 City, SUM(Sales) AS Total_Sales
FROM train
GROUP BY City
ORDER BY Total_Sales DESC;

5. Sales by Region and Segment

SELECT Region, Segment, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Region, Segment
ORDER BY Region, Segment;

6. Average Shipping Time

SELECT 
    AVG(DATEDIFF(DAY, Order_Date, Ship_Date)) AS Avg_Shipping_Time
FROM train;
