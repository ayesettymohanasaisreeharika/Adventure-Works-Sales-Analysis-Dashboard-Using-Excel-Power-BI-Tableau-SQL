# Adventure-Works-Sales-Analysis-Dashboard-Using-Excel-Power-BI-Tableau-SQL
Adventure Works Sales Analysis is a Business Intelligence project using Excel, SQL, Tableau, and Power BI to analyze sales, customers, products, and regional performance through KPIs, data modeling, and interactive dashboards. 📊🚀

# Adventure-Works-Sales-Analysis-Dashboard 
## Project Objectuve
Adventure Works Sales Analysis is a Business Intelligence project completed using Excel, SQL, Tableau, and Power BI to analyze sales performance, customer behavior, product profitability, and regional sales trends. The project involved data modeling, KPI creation, data analysis, and interactive dashboards to uncover valuable business insights, helping organizations improve sales strategies, customer engagement, and decision-making.

## Dataset Used 
 - <a href="">Dataset</a>
 
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
<a href ="https://github.com/mohanaharikaayesetty-cpu/HR-ANALYTICS---Employee-Attrition-Dashboard/blob/main/Excel%20Screenshot%201.png">EXCEL-Dashboard 1</a>  
<a href ="https://github.com/mohanaharikaayesetty-cpu/HR-ANALYTICS---Employee-Attrition-Dashboard/blob/main/Excel%20Screenshot%202.png">EXCEL-Dashboard 2</a>
<a href ="https://github.com/mohanaharikaayesetty-cpu/HR-ANALYTICS---Employee-Attrition-Dashboard/blob/main/Power%20BI%20Screenshot%201.png">POWER BI-Dashboard 1</a>
<a href ="https://github.com/mohanaharikaayesetty-cpu/HR-ANALYTICS---Employee-Attrition-Dashboard/blob/main/Power%20BI%20Screenshot%202.png">POWER BI-Dashboard 2</a> 
<a href ="https://github.com/mohanaharikaayesetty-cpu/HR-ANALYTICS---Employee-Attrition-Dashboard/blob/main/Power%20BI%20Screenshot%203.png">POWER BI-Dashboard 3</a> 
<a href="https://github.com/ayesettymohanasaisreeharika/HR-ANALYTICS---Employee-Attrition-Dashboard/blob/main/Tableau%20Screenshot.png">TABLEAU-Dashboard</a>

## MYSQL 
<a href="https://github.com/mohanaharikaayesetty-cpu/HR-ANALYTICS---Employee-Attrition-Dashboard/blob/main/HR_Analytics_Project.sql">MYSQL</a> 

## Process Employee Attrition Analysis
– Process - Data Collection : Imported HR_1 and HR_2 datasets from Excel. - Data Cleaning : Removed duplicates, handled missing values, corrected data types, and standardized data formats. - Data Analysis : Explored employee data to identify attrition trends and workforce patterns. - KPI Development : Created KPIs such as Attrition Rate, Average Working Years, Monthly Income Analysis, and Work-Life Balance metrics. - SQL Implementation : Wrote SQL queries to extract, transform, and analyze HR data. - Dashboard Development : Built interactive dashboards in Excel, Tableau, and Power BI. - Visualization & Insights : Created charts and reports to highlight key findings and business insights. ## 🔍 Key Insights - 📊 Attrition varies across departments and job roles. - 💰 Lower income is associated with higher attrition. - ⚖️ Better work-life balance contributes to employee retention. - 🚀 Lack of promotions increases the likelihood of employee turnover. ## ✅ Conclusion Using Excel, SQL, Tableau, and Power BI, the project identified key factors affecting employee attrition and provided actionable insights to improve employee retention, satisfaction, and HR decision-making. 🚀📈👥 ## Dashboard ## EXCEL DASHBOARDS <img width="1919" height="951" alt="Excel Screenshot 1" src="https://github.com/user-attachments/assets/2b13fd70-fe7f-4eaa-ae41-99f0cce40c8f" /> <img width="1913" height="990" alt="Excel Screenshot 2" src="https://github.com/user-attachments/assets/924597c9-a7d5-4b4f-a410-4199467d021d" /> ## POWER BI DASHBOARDS <img width="1478" height="771" alt="Power BI Screenshot 1" src="https://github.com/user-attachments/assets/25fde27e-e549-4f04-9e60-79ab0cca7be6" /> <img width="1679" height="815" alt="Power BI Screenshot 2" src="https://github.com/user-attachments/assets/21ff4df6-a581-4946-be17-5444c8e1511a" /> <img width="1553" height="817" alt="Power BI Screenshot 3" src="https://github.com/user-attachments/assets/d9dfac0f-52aa-49d6-a772-1d293d01e387" /> ## TABLEAU DASHBOARD <img width="1910" height="963" alt="Tableau Screenshot" src="https://github.com/user-attachments/assets/fb0bbf86-4895-4176-9dd8-18681733d8a2" /> give me details about uploaded files in the same format of given hr analytics project
