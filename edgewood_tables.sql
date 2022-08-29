-- create new database
-- drop existing database if it has the same name
DROP SCHEMA IF EXISTS edgewood_inc;
CREATE SCHEMA edgewood_inc;
USE edgewood_inc;

-- creating multiple tables
DROP TABLE IF EXISTS products;
CREATE TABLE products(
	product_id INT AUTO_INCREMENT NOT NULL,
	product_name VARCHAR(100) NOT NULL,
    price DECIMAL(7,2) NOT NULL,
    product_category VARCHAR(100) NOT NULL,
    PRIMARY KEY(product_id)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
	customer_id INT AUTO_INCREMENT NOT NULL,
	customer_fname VARCHAR(100) NOT NULL,
    customer_lname VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    PRIMARY KEY(customer_id)
);

DROP TABLE IF EXISTS sales;
CREATE TABLE sales(
	order_id INT AUTO_INCREMENT NOT NULL,
    order_date DATE NOT NULL,
    quantity BIGINT NOT NULL,
    total DECIMAL(7,2) NOT NULL,
    product_id INT NOT NULL,
    customer_id INT NOT NULL,
    ship_mode VARCHAR(100) NOT NULL,
    PRIMARY KEY(order_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);