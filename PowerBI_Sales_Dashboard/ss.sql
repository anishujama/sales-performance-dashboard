SELECT ROUND(SUM(Total_Amount),2) AS Total_Revenue
FROM sales_data;

SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_data;

SELECT COUNT(Transaction_ID) AS Total_Transactions
FROM sales_data;


SELECT ROUND(AVG(Total_Amount),2) AS Average_Order_Value
FROM sales_data;


SELECT
ROUND(
(SUM(Profit) / SUM(Total_Amount)) * 100,
2
) AS Profit_Margin_Percentage
FROM sales_data;

SELECT Customer_Name,
       ROUND(SUM(Total_Amount),2) AS Total_Spent
FROM sales_data
GROUP BY Customer_Name
ORDER BY Total_Spent DESC
LIMIT 20;

SELECT Region,
       ROUND(SUM(Total_Amount),2) AS Revenue
FROM sales_data
GROUP BY Region
ORDER BY Revenue DESC;

SELECT Category,
       ROUND(SUM(Profit),2) AS Profit
FROM sales_data
GROUP BY Category
ORDER BY Profit DESC;

SELECT Sales_Channel,
       ROUND(SUM(Total_Amount),2) AS Revenue
FROM sales_data
GROUP BY Sales_Channel;

SELECT Payment_Method,
       COUNT(*) AS Transactions
FROM sales_data
GROUP BY Payment_Method
ORDER BY Transactions DESC;







