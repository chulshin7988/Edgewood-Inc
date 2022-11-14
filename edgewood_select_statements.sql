-- SELECT * FROM sales;
-- SELECT * FROM customers;
-- SELECT * FROM products;

-- Find the highest price and the name of the product by Edgewood-Inc
SELECT
	product_id,
	product_name,
    price
FROM products
WHERE price = (SELECT MAX(price) FROM products);

-- List the product categories
SELECT
	product_category
FROM products
GROUP BY product_category;

-- Find out who has never bought any items
SELECT 
	customers.customer_id,
    customer_fname,
    customer_lname
FROM customers
LEFT JOIN sales
	ON customers.customer_id = sales.customer_id
WHERE sales.order_id IS NULL;

-- Top 5 most spend in a single order
SELECT
	customers.customer_id,
    customers.customer_fname,
    customers.customer_lname,
    sales.total
FROM customers
JOIN sales
	ON customers.customer_id = sales.customer_id
GROUP BY sales.customer_id
ORDER BY sales.total DESC
LIMIT 5;

	


    
