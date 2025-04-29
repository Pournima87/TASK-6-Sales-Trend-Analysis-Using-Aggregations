-- ---------------------------------------------------------
-- TASK 6: Sales Trend Analysis Using Aggregations
-- Objective: Analyze monthly revenue, order volume, and insights
-- Tools Used: MySQL 8.0
-- ---------------------------------------------------------

-- Step 1: Create the database
CREATE DATABASE online_sales;
USE online_sales;

-- Step 2: Create the orders table

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

-- Step 3: Insert sample data
-- (Sales records for 2023 and 2024)

INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-10', 250.00, 101),
(2, '2024-01-15', 150.00, 102),
(3, '2024-02-05', 300.00, 103),
(4, '2024-02-20', 400.00, 104),
(5, '2024-03-12', 500.00, 105),
(6, '2024-03-25', 600.00, 106),
(7, '2024-04-05', 700.00, 107),
(8, '2024-04-15', 800.00, 108),
(9, '2024-05-10', 900.00, 109),
(10, '2024-05-20', 1000.00, 110),
(11, '2023-11-11', 1200.00, 111),
(12, '2023-11-25', 1300.00, 112),
(13, '2023-12-05', 1100.00, 113),
(14, '2023-12-18', 1400.00, 114),
(15, '2023-10-10', 1600.00, 115);

-- ---------------------------------------------------------
-- Step 4: Perform Sales Trend Analysis
-- - Group by year and month
-- - Calculate total revenue and total orders
-- - Add average order value
-- - Display month name for better readability
-- - Order results chronologically
-- ---------------------------------------------------------

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    MONTHNAME(order_date) AS order_month_name,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(amount) / COUNT(DISTINCT order_id), 2) AS average_order_value
FROM 
    orders
GROUP BY 
    YEAR(order_date),
    MONTH(order_date),
    MONTHNAME(order_date)
ORDER BY 
    order_year ASC,
    order_month ASC;
    
-- ---------------------------------------------------------
-- Step 5: Show Overall Total Summary
-- (Grand Total Revenue, Total Orders, and Overall AOV)
-- ---------------------------------------------------------

SELECT 
    'TOTAL' AS order_year,
    NULL AS order_month_name,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(amount) / COUNT(DISTINCT order_id), 2) AS average_order_value
FROM 
    orders;


