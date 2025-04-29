# Task 6: Sales Trend Analysis Using SQL

## 📌 Objective
Analyze monthly revenue and order volume from an `orders` table using SQL aggregation functions.

## 🛠️ Tools Used
- MySQL 8.0 Command Line Client
- MySQL Workbench
- SQL Command Line Client

## 🧾 Dataset
A synthetic `orders` table was created with the following columns:
- `order_id` (INT)
- `order_date` (DATE)
- `amount` (DECIMAL)
- `product_id` (INT)

## 📊 Deliverables
- SQL Script: `sales_trend_analysis.sql`
- PDF Report: `Task6_Sales_Trend_Analysis_Report.pdf`
- Result Table Screenshots (see below)

## 📈 Results

### 📊 Full orders Table 

| order_id | order_date | amount  | product_id |
|----------|------------|---------|------------|
| 1        | 2024-01-10 | 250.00  | 101        |
| 2        | 2024-01-15 | 150.00  | 102        |
| ...      | ...        | ...     | ...        |
| 15       | 2023-10-10 | 1600.00 | 115        |


![orders table](https://github.com/user-attachments/assets/f4709c0d-3814-4117-b7a2-d04c628430ea)


### 📅 Monthly Revenue & Order Volume

| Year | Month     | Revenue | Orders | AOV   |
|------|-----------|---------|--------|-------|
| 2023 | October   | 1600.00 | 1      | 1600.00 |
| 2023 | November  | 2500.00 | 2      | 1250.00 |
| 2023 | December  | 2500.00 | 2      | 1250.00 |
| 2024 | January   | 400.00  | 2      | 200.00 |
| 2024 | February  | 700.00  | 2      | 350.00 |
| 2024 | March     | 1100.00 | 2      | 550.00 |
| 2024 | April     | 1500.00 | 2      | 750.00 |
| 2024 | May       | 1900.00 | 2      | 950.00 |



![Sales Trend Analysis](https://github.com/user-attachments/assets/28726be8-b8a6-4bd5-b596-3d547c2def7d)

---

### 📊 Grand Totals 

| Year  | Revenue | Orders | AOV   |
|-------|---------|--------|-------|
| TOTAL | 12200.00 | 15     | 813.33 |



![Total Summary](https://github.com/user-attachments/assets/ecd56cac-c6d3-492e-adfc-8f9ca0ab1d18)


---

## 🧩 SQL Features Practiced
- `GROUP BY`
- `SUM()`
- `COUNT(DISTINCT)`
- `ROUND()`
- `MONTHNAME()` and `YEAR()`
- Handling `ONLY_FULL_GROUP_BY` mode in MySQL

## 💡 Bonus Metrics
- ✅ Average Order Value (AOV)
- ✅ Monthly Breakdown using `MONTHNAME()`
- ✅ Chronological Order using `ORDER BY`
- ✅ Limiting Output with `LIMIT`
- ✅ Grand Total Row (commented)

## 📚 Learnings
- Grouping time-based sales data
- Aggregating key business metrics
- Writing clean, readable SQL
- Resolving SQL mode errors in MySQL
- Reporting insights using SQL only

## 📁 Files
- `Task6_onlinesale_analysis.sql` — SQL script to create, populate and analyze the `orders` table
- `Task6_onlinesale_Analysis_Report.pdf` — Report summarizing queries, outputs, and learnings

## ✅ Status
✅ Task Completed Successfully
