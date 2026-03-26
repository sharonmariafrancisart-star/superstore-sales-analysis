-- Superstore SQL Analysis
-- Author: Sharon Maria
-- Description: Data cleaning and analysis for Superstore dataset

SELECT * FROM superstore_db.superstore;
ALTER TABLE superstore
MODIFY sales DECIMAL(10,2),
MODIFY profit DECIMAL(10,2),
MODIFY discount DECIMAL(5,2),
MODIFY quantity INT;
CREATE TABLE superstore_clean AS
SELECT
    row_id,
    order_id,
    STR_TO_DATE(order_date, '%d-%m-%Y') AS order_date,
    STR_TO_DATE(ship_date, '%d-%m-%Y') AS ship_date,
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
SELECT MIN(order_date), MAX(order_date) FROM superstore_clean;
SELECT * FROM superstore_clean WHERE order_date IS NULL;