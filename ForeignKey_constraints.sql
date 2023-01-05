--USE edgewood_inc

IF OBJECT_ID('FK_product_id') IS NOT NULL ALTER TABLE Orders DROP CONSTRAINT FK_product_id
GO
IF OBJECT_ID('FK_customer_id') IS NOT NULL ALTER TABLE Orders DROP CONSTRAINT FK_customer_id
GO
IF OBJECT_ID('FK_shipping_id') IS NOT NULL ALTER TABLE Orders DROP CONSTRAINT FK_shipping_id
GO
IF OBJECT_ID('FK_order_id') IS NOT NULL ALTER TABLE Return_table DROP CONSTRAINT FK_order_id
GO
IF OBJECT_ID('FK_return_reason_id') IS NOT NULL ALTER TABLE Return_table DROP CONSTRAINT FK_return_reason_id
GO

ALTER TABLE Orders
	ADD
	CONSTRAINT FK_product_id FOREIGN KEY (product_id) REFERENCES Products(product_id),
	CONSTRAINT FK_customer_id FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
	CONSTRAINT FK_shipping_id FOREIGN KEY (shipping_id) REFERENCES Shipments(shipping_id)

ALTER TABLE Return_table
	ADD
	CONSTRAINT FK_order_id FOREIGN KEY (order_id) REFERENCES Orders(order_id),
	CONSTRAINT FK_return_reason_id FOREIGN KEY (return_reason_id) REFERENCES Return_reason(return_reason_id)
