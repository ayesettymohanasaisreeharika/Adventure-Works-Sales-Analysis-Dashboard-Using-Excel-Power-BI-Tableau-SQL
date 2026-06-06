CREATE DATABASE sales_project;
USE sales_project;

##Combine Sales Tables
CREATE TABLE sales AS
SELECT * FROM factinternetsales
UNION ALL
SELECT * FROM fact_internet_sales_new;

##Merge Product Tables
CREATE TABLE product_full AS
SELECT 
    p.ProductKey,
    p.EnglishProductName AS ProductName,
    sc.EnglishProductSubcategoryName AS SubCategory,
    c.EnglishProductCategoryName AS Category,
    p.StandardCost AS UnitCost,
    p.ListPrice AS UnitPrice
FROM dimproduct p
LEFT JOIN dimproductsubcategory sc 
    ON p.ProductSubcategoryKey = sc.ProductSubcategoryKey
LEFT JOIN dimproductcategory c 
    ON sc.ProductCategoryKey = c.ProductCategoryKey;
    
    ##Add Product Info to Sales
    CREATE TABLE sales_enriched AS
SELECT 
    s.*,
    p.ProductName,
    p.UnitCost,
    p.Category,
    p.SubCategory
FROM sales s
LEFT JOIN product_full p
    ON s.ProductKey = p.ProductKey;
    
    ##Add Customer Name
    CREATE TABLE sales_customer AS
SELECT 
    se.*,
    CONCAT(c.FirstName, ' ', c.LastName) AS CustomerFullName
FROM sales_enriched se
LEFT JOIN dimcustomer c 
    ON se.CustomerKey = c.CustomerKey;

##Date Columns
CREATE TABLE sales_date AS
SELECT 
    sc.*,

    -- Convert Excel number → proper date
    DATE_ADD('1899-12-30', INTERVAL sc.OrderDate DAY) AS OrderDate_Converted,

    -- Date fields
    YEAR(DATE_ADD('1899-12-30', INTERVAL sc.OrderDate DAY)) AS Year,
    MONTH(DATE_ADD('1899-12-30', INTERVAL sc.OrderDate DAY)) AS MonthNo,
    MONTHNAME(DATE_ADD('1899-12-30', INTERVAL sc.OrderDate DAY)) AS MonthFullName,
    CONCAT('Q', QUARTER(DATE_ADD('1899-12-30', INTERVAL sc.OrderDate DAY))) AS Quarter,
    DATE_FORMAT(DATE_ADD('1899-12-30', INTERVAL sc.OrderDate DAY), '%Y-%b') AS YearMonth,
    WEEKDAY(DATE_ADD('1899-12-30', INTERVAL sc.OrderDate DAY)) + 1 AS WeekdayNumber,
    DAYNAME(DATE_ADD('1899-12-30', INTERVAL sc.OrderDate DAY)) AS WeekdayName

FROM sales_customer sc;

##Financial Columns
CREATE TABLE sales_financial AS
SELECT 
    sd.*,

    -- Financial Month
    CASE 
        WHEN MONTH(sd.OrderDate_Converted) >= 4 THEN MONTH(sd.OrderDate_Converted) - 3
        ELSE MONTH(sd.OrderDate_Converted) + 9
    END AS FinancialMonth,

    -- Financial Quarter
    CASE 
        WHEN MONTH(sd.OrderDate_Converted) BETWEEN 4 AND 6 THEN 'Q1'
        WHEN MONTH(sd.OrderDate_Converted) BETWEEN 7 AND 9 THEN 'Q2'
        WHEN MONTH(sd.OrderDate_Converted) BETWEEN 10 AND 12 THEN 'Q3'
        ELSE 'Q4'
    END AS FinancialQuarter

FROM sales_date sd;

##Metrics

CREATE TABLE sales_final AS
SELECT 
    sf.*,

    (sf.UnitPrice * sf.OrderQuantity - sf.DiscountAmount) AS SalesAmount,
    (sf.ProductStandardCost * sf.OrderQuantity) AS ProductionCost,
    ((sf.UnitPrice * sf.OrderQuantity - sf.DiscountAmount) 
     - (sf.ProductStandardCost * sf.OrderQuantity)) AS Profit

FROM sales_financial sf;

##Month-wise Sales
SELECT 
    Year,
    MonthFullName,
    SUM(SalesAmount) AS Sales
FROM sales_final
GROUP BY Year, MonthNo, MonthFullName
ORDER BY Year, MonthNo;

##Year-wise Sales
SELECT 
    Year,
    SUM(SalesAmount) AS Sales
FROM sales_final
GROUP BY Year;

##Quarter-wise Sales
SELECT 
    Quarter,
    SUM(SalesAmount) AS Sales
FROM sales_final
GROUP BY Quarter;

##Top Products
SELECT 
    ProductName,
    SUM(SalesAmount) AS Sales
FROM sales_final
GROUP BY ProductName
ORDER BY Sales DESC
LIMIT 10;

##Top Customers
SELECT 
    CustomerFullName,
    SUM(SalesAmount) AS Sales
FROM sales_final
GROUP BY CustomerFullName
ORDER BY Sales DESC
LIMIT 10;

SELECT 
    ProductName,
    CustomerFullName,
    Year,
    MonthFullName,
    FinancialMonth,
    SalesAmount,
    Profit
FROM sales_final;

SELECT 
    SUM(SalesAmount) AS TotalSales,
    SUM(ProductionCost) AS TotalCost,
    SUM(Profit) AS TotalProfit,
    SUM(OrderQuantity) AS TotalOrders
FROM sales_final;

DESCRIBE sales;