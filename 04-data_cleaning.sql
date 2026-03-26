-- Data Cleaning for Superstore Dataset
-- Author: Sharon Maria
-- Converts raw data into analysis-ready format

USE superstore_db;
DROP TABLE IF EXISTS superstore_clean;
CREATE TABLE superstore_clean AS
SELECT
    row_id,
    order_id,

    STR_TO_DATE(order_date, '%d-%m-%Y %H:%i') AS order_date,
    STR_TO_DATE(ship_date, '%d-%m-%Y %H:%i') AS ship_date,

    ship_mode,
    customer_id,
    customer_name,
    segment,
    country,
    city,
    state,
    postal_code,
    region,
    product_id,
    category,
    sub_category,
    product_name,

    CAST(sales AS DECIMAL(10,2)) AS sales,
    CAST(quantity AS UNSIGNED) AS quantity,
    CAST(discount AS DECIMAL(5,2)) AS discount,
    CAST(profit AS DECIMAL(10,2)) AS profit

FROM superstore;

SELECT COUNT(*) FROM superstore_clean;
SELECT COUNT(*) FROM superstore_clean;
SELECT MIN(order_date), MAX(order_date) FROM superstore_clean;
SELECT * FROM superstore_clean WHERE order_date IS NULL;

SELECT ROUND(SUM(sales),2) AS total_sales
FROM superstore_clean;

SELECT 
    category, 
    ROUND(SUM(sales),2) AS total_sales
FROM superstore_clean
GROUP BY category
ORDER BY total_sales DESC;

SELECT 
    region, 
    ROUND(SUM(profit),2) AS total_profit
FROM superstore_clean
GROUP BY region
ORDER BY total_profit DESC;

SELECT 
    region, 
    ROUND(SUM(profit),2) AS total_profit
FROM superstore_clean
GROUP BY region
ORDER BY total_profit DESC;
SELECT 
    category,
    ROUND(SUM(profit)/SUM(sales), 2) AS profit_ratio
FROM superstore_clean
GROUP BY category
ORDER BY profit_ratio DESC;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    ROUND(SUM(sales),2) AS monthly_sales
FROM superstore_clean
GROUP BY year, month
ORDER BY year, month;

