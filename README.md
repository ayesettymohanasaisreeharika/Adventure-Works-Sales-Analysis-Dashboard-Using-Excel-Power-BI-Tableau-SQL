# Adventure-Works-Sales-Analysis-Dashboard-Using-Excel-Power-BI-Tableau-SQL
Adventure Works Sales Analysis is a Business Intelligence project using Excel, SQL, Tableau, and Power BI to analyze sales, customers, products, and regional performance through KPIs, data modeling, and interactive dashboards. 📊🚀

# Adventure-Works-Sales-Analysis-Dashboard 
## Project Objectuve
Adventure Works Sales Analysis is a Business Intelligence project completed using Excel, SQL, Tableau, and Power BI to analyze sales performance, customer behavior, product profitability, and regional sales trends. The project involved data modeling, KPI creation, data analysis, and interactive dashboards to uncover valuable business insights, helping organizations improve sales strategies, customer engagement, and decision-making.

## Dataset Used 
 - <a href="https://github.com/ayesettymohanasaisreeharika/Adventure-Works-Sales-Analysis-Dashboard-Using-Excel-Power-BI-Tableau-SQL/tree/915e7697585b7c077510566960d7d0315ce16fdf/Dataset">Dataset</a>
 
 ## 🛠️ Tech Stack / Technologies Used
- 📊 Microsoft Excel – Data Cleaning, KPI Calculations & Dashboard Creation
- 🗄️ MySQL – Data Storage, Querying & Data Analysis
- 📈 Tableau – Interactive Dashboard Development
- 📉 Power BI – Business Intelligence Reporting & Visualization
- 🔢 SQL – Data Extraction, Transformation & Analysis
- ⚡ DAX – KPI and Measure Creation
- 📦 Data Modeling – Star Schema Implementation
- 💡 Business Intelligence – Sales & Customer Analytics
 
## 🎯 Key Skills
- 🧹 Data Cleaning
- 📊 Data Analysis
- 📈 Data Visualization
- 🏗️ Data Modeling
- 📋 KPI Development
- 📉 Dashboard Design
- 🔍 Sales Performance Analysis
- 💡 Business Insights & Reporting

## The KPI questions
 ## Data Preparation
- Append/Union Fact Internet Sales and Fact Internet Sales New tables into a single SALES table.
- Merge Product, Product Category, and Product SubCategory tables.
- Create relationships between all tables.
  
## Data Enrichment
- Lookup Product Name from the Product table into the Sales table.
- Lookup Customer Full Name from the Customer table and Unit Price from the Product table into the Sales table.
  
## Date Calculations (from OrderDateKey)
- Create a Date field from OrderDateKey and calculate:
- Year
- Month Number
- Month Full Name
- Quarter (Q1, Q2, Q3, Q4)
- Year-Month (YYYY-MMM)
- Weekday Number
- Weekday Name
- Financial Month (April = 1, March = 12)
- Financial Quarter
  
## KPI Calculations
###  Calculate Sales Amount using:
- Unit Price
- Order Quantity
- Unit Discount
 
###  Calculate Production Cost using:
- Unit Cost
- Order Quantity
  
###  Calculate Profit:
- Profit = Sales Amount − Production Cost
  
###  Analysis & Visualization
- Create a Pivot Table for Month-wise Sales with Year as a filter.
- Create a Bar Chart showing Year-wise Sales.
- Create a Line Chart showing Month-wise Sales.
- Create a Pie Chart showing Quarter-wise Sales.
- Create a Combo Chart (Bar + Line) showing:
  -- Sales Amount
  -- Production Cost
  
## Advanced Analysis
###  Build additional KPIs/Charts for:
- Product Performance
- Customer Performance
- Regional Performance

## Dashboard interaction 
<a href ="https://github.com/ayesettymohanasaisreeharika/Adventure-Works-Sales-Analysis-Dashboard-Using-Excel-Power-BI-Tableau-SQL/blob/915e7697585b7c077510566960d7d0315ce16fdf/Screenshots%20of%20Dashboards/Excel%20Screenshot.png
">EXCEL-Dashboard </a> 

<a href ="https://github.com/ayesettymohanasaisreeharika/Adventure-Works-Sales-Analysis-Dashboard-Using-Excel-Power-BI-Tableau-SQL/blob/915e7697585b7c077510566960d7d0315ce16fdf/Screenshots%20of%20Dashboards/Power%20BI%20Screenshot.png">POWER BI-Dashboard </a>
 
<a href="https://github.com/ayesettymohanasaisreeharika/Adventure-Works-Sales-Analysis-Dashboard-Using-Excel-Power-BI-Tableau-SQL/blob/915e7697585b7c077510566960d7d0315ce16fdf/Screenshots%20of%20Dashboards/Tableau%20Screenshot.png">TABLEAU-Dashboard</a>

## MYSQL 
<a href="">MYSQL</a> 

## Adventure Works Sales Analysis – Process
- Data Collection : Imported Fact and Dimension tables from Adventure Works datasets.
- Data Cleaning : Removed duplicates, handled missing values, corrected data types, and standardized formats.
- Data Modeling : Created a Star Schema connecting FactInternetSales with Customer, Product, Date, and Sales Territory dimensions.
- Data Analysis : Analyzed sales performance, customer behavior, product categories, and regional trends.
- KPI Development : Created KPIs such as Total Sales, Total Profit, Average Order Value, Customer Count, and Product Performance metrics.
- SQL Implementation : Developed SQL queries for extracting and analyzing business data.
- Dashboard Development : Built interactive dashboards in Excel, Tableau, and Power BI.
- Visualization & Insights : Created reports and charts to identify sales opportunities and business growth areas.



## 🔍 Key Insights
- 📈 Sales revenue is concentrated in a few high-performing product categories.
- 🌎 Certain sales territories contribute significantly higher revenue than others.
- 👥 Repeat customers generate a large percentage of total sales.
- 🛍️ Product performance varies across categories and regions.
- 💰 High-profit products contribute disproportionately to overall profitability.
- 📅 Seasonal sales trends influence revenue generation throughout the year.

  ## Conclusion
- Using Excel, SQL, Tableau, and Power BI, the Adventure Works Sales Analysis project provided comprehensive insights into sales performance, customer behavior,   product profitability, and regional trends. The analysis helps businesses optimize sales strategies, improve customer retention, increase profitability, and support data-driven decision-making. 🚀📊💰
 
 ## Dashboard 
 ## EXCEL DASHBOARDS 
 <img width="1919" height="951" alt="Excel Screenshot 1" src="<img width="1405" height="896" alt="Excel Screenshot" src="https://github.com/user-attachments/assets/f9980225-aa7f-43ea-9f6b-d2f376747ac2" />
" /> 
 
 ## POWER BI DASHBOARDS
 <img width="1478" height="771" alt="Power BI Screenshot 1" src="<img width="1441" height="805" alt="Power BI Screenshot" src="https://github.com/user-attachments/assets/e4280a2c-f4ec-4feb-9332-3fd72d7373f6" />
" /> 
 
 ## TABLEAU DASHBOARD
 <img width="1910" height="963" alt="Tableau Screenshot" src="<img width="1411" height="809" alt="Tableau Screenshot" src="https://github.com/user-attachments/assets/b8baeb27-72fd-4e61-b3f1-aef786aeada9" />
" />
