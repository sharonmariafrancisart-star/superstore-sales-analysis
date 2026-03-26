-- Superstore Database Setup
-- Author: Sharon Maria
-- Description: Raw table creation for Superstore dataset

USE retail_db;

DROP TABLE IF EXISTS superstore_raw;

CREATE TABLE superstore_raw (
  row_id INT,
  order_id VARCHAR(50),
  order_date VARCHAR(20),
  ship_date VARCHAR(20),
  ship_mode VARCHAR(50),
  customer_id VARCHAR(50),
  customer_name VARCHAR(100),
  segment VARCHAR(50),
  country VARCHAR(50),
  city VARCHAR(50),
  state VARCHAR(50),
  postal_code VARCHAR(20),
  region VARCHAR(20),
  product_id VARCHAR(50),
  category VARCHAR(50),
  sub_category VARCHAR(50),
  product_name VARCHAR(255),
  sales DECIMAL(10,2),
  quantity INT,
  discount DECIMAL(5,2),
  profit DECIMAL(10,2)
);