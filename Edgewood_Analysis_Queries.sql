--USE edgewood_inc

--Find out how many orders were placed and how many quantities were bought in total group by product id
SELECT
	product_id,
	COUNT(product_id) AS 'Count Of Orders',
	SUM(quantity) AS 'Total Quantities'
FROM Orders
GROUP BY product_id

--How many orders were placed in each month
SELECT
	MONTH(order_date) AS 'MONTH',
	COUNT(MONTH(order_date)) AS 'COUNT'
FROM Orders
GROUP BY MONTH(order_date)

--Find out the number of orders and total amount sales per each month
SELECT
	MONTH(order_date) AS 'Month',
	COUNT(MONTH(order_date)) AS 'Orders',
	SUM(price_USD * quantity) AS 'Total Amount'
FROM Orders
INNER JOIN Products
	ON Orders.product_id = Products.product_id
GROUP BY MONTH(order_date)
--ORDER BY 3 DESC

--Find out the order id, customer's id, customer's name and total of each order in the month of January
SELECT
	order_id,
	Customers.customer_id,
	Customers.customer_fName AS 'First Name',
	Customers.customer_lName AS 'Last Name',
	SUM(price_USD * quantity) AS 'TOTAL'
FROM Orders
INNER JOIN Products
	ON Orders.product_id = Products.product_id
INNER JOIN Customers
	ON Orders.customer_id = Customers.customer_id
WHERE order_date BETWEEN '01-01-2021' AND '01-31-2021'
GROUP BY order_id, Customers.customer_id, Customers.customer_fName, Customers.customer_lName

--Look for the product categories where customers have bought more than 50 quantities
SELECT 
	order_id,
	product_category
FROM Products
INNER JOIN Orders
	ON Orders.product_id = Products.product_id
WHERE quantity > 50 

--Which shipping method was most frequently used
SELECT
	shipping_type,
	COUNT(Shipments.shipping_id) AS 'Count Of Shipments'
FROM Shipments
INNER JOIN Orders
	ON Shipments.shipping_id = Orders.shipping_id
GROUP BY shipping_type
ORDER BY 2 DESC

--Find out how many returns received in which month and the total amount that was returned
SELECT
	MONTH(return_date) AS 'Month',
	COUNT(MONTH(return_date)) AS 'Return Counts',
	SUM(Orders.quantity * Products.price_USD) AS 'Total'
FROM Return_table
INNER JOIN Orders
	ON Return_table.order_id = Orders.order_id
INNER JOIN Products
	ON Products.product_id = Orders.product_id
GROUP BY MONTH(return_date)

--What is the most frequent reason for the return
SELECT
	returning_reason,
	COUNT(Return_table.return_reason_id) AS 'Count_Of_Reasons'
FROM Return_reason
INNER JOIN Return_table
	ON Return_reason.return_reason_id = Return_table.return_reason_id
GROUP BY Return_reason.returning_reason
ORDER BY 2 DESC