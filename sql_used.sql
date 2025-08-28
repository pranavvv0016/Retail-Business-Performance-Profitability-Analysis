-- SQL used for cleaning and profitability in SQLite

-- 1) Remove incomplete rows (missing InvoiceNo or CustomerID)
-- Delete rows where the 'InvoiceNo' or 'CustomerID' is missing
DELETE FROM online_retail
WHERE InvoiceNo IS NULL OR CustomerID IS NULL
   OR TRIM(InvoiceNo) = '' OR TRIM(CustomerID) = '';

-- 2) (Optional) If you added a Product_Category column in the database, 
--    you could run the profitability summary directly in SQL.
--    Here is a template assuming 'Product_Category' exists in 'online_retail'.

-- Assuming Cost is 60% of UnitPrice to calculate Profit
SELECT
  "Product_Category",
  SUM(Quantity * UnitPrice) AS TotalRevenue,
  SUM(Quantity * UnitPrice * 0.40) AS TotalProfit,
  (SUM(Quantity * UnitPrice * 0.40) / SUM(Quantity * UnitPrice)) * 100 AS ProfitMargin
FROM online_retail
GROUP BY "Product_Category"
ORDER BY TotalProfit ASC;
