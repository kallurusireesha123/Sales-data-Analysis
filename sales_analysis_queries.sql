 1. Total Revenue
SELECT SUM(TransactionAmount) AS Total_Revenue FROM sales_data;

 2. Average Transaction Amount
SELECT AVG(TransactionAmount) AS Avg_Transaction_Amount FROM sales_data;

 3. Top Selling Product
SELECT ProductName, SUM(Quantity) AS Total_Quantity_Sold
FROM sales_data
GROUP BY ProductName
ORDER BY Total_Quantity_Sold DESC
LIMIT 1;

 4. Payment Method Distribution
SELECT PaymentMethod, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM sales_data) AS Payment_Percentage
FROM sales_data
GROUP BY PaymentMethod
ORDER BY Payment_Percentage DESC;

 5. Return Rate
SELECT Returned, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM sales_data) AS Return_Percentage
FROM sales_data
GROUP BY Returned;

 6. Top 5 Cities by Sales
SELECT City, SUM(TransactionAmount) AS Total_Sales
FROM sales_data
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 5;

 7. Region-wise Sales
SELECT Region, SUM(TransactionAmount) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;

 8. Promotional vs Non-Promotional Sales
SELECT IsPromotional, SUM(TransactionAmount) AS Total_Sales
FROM sales_data
GROUP BY IsPromotional;

 9. Average Discount by Store Type
SELECT StoreType, AVG(DiscountPercent) AS Avg_Discount
FROM sales_data
GROUP BY StoreType;
