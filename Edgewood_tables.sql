--CREATE DATABASE edgewood_inc
--USE edgewood_inc

IF OBJECT_ID('Products') IS NOT NULL DROP TABLE Products
GO
IF OBJECT_ID('Customers') IS NOT NULL DROP TABLE Customers
GO
IF OBJECT_ID('Orders') IS NOT NULL DROP TABLE Orders
GO
IF OBJECT_ID('Shipments') IS NOT NULL DROP TABLE Shipments
GO
IF OBJECT_ID('Return_table') IS NOT NULL DROP TABLE Return_table
GO
IF OBJECT_ID('Return_reason') IS NOT NULL DROP TABLE Return_reason
GO

CREATE TABLE Products(
	product_id INT NOT NULL PRIMARY KEY,
	product_name VARCHAR(255) NOT NULL,
	price_USD DECIMAL(6,2) NOT NULL,
	product_category VARCHAR(255) NOT NULL
)

CREATE TABLE Customers(
	customer_id INT NOT NULL PRIMARY KEY,
	customer_fName VARCHAR(255) NOT NULL,
	customer_lName VARCHAR(255) NOT NULL,
	resident_state CHAR(2) NOT NULL
)

CREATE TABLE Orders(
	order_id INT NOT NULL PRIMARY KEY,
	order_date DATE NOT NULL,
	quantity INT NOT NULL,
	product_id INT NOT NULL,
	customer_id INT NOT NULL,
	shipping_id INT NOT NULL
)

CREATE TABLE Shipments(
	shipping_id INT NOT NULL PRIMARY KEY,
	shipping_type VARCHAR(255) NOT NULL
)

CREATE TABLE Return_table(
	return_id INT NOT NULL PRIMARY KEY,
	return_date DATE NOT NULL,
	order_id INT NOT NULL,
	return_reason_id INT NOT NULL
)

CREATE TABLE Return_reason(
	return_reason_id INT NOT NULL PRIMARY KEY,
	returning_reason VARCHAR(255)
)

--SELECT * FROM Products
--SELECT * FROM Customers
--SELECT * FROM Orders
--SELECT * FROM Shipments
--SELECT * FROM Return_table
--SELECT * FROM Return_reason