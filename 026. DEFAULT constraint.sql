-- DEFAULT constraint
-- DEFAULT is a SQL constraint that automatically assigns a specified value to a column when no value is provided for that column during an INSERT.
-- If a value is provided, SQL uses the provided value instead of the DEFAULT value.

-- Suppose I have created a database of a resturant that has some products.

CREATE DATABASE db026;
USE db026;

CREATE TABLE products
(
	serial_no INT,
    product_name VARCHAR(50),
    price DECIMAL(10,2) DEFAULT 0.00
);

-- DEFAULT 0.00 means:
-- If I do not provide a price value when inserting a row,
-- MySQL automatically assigns 0.00 to the price column.


INSERT INTO products
VALUES	(1, "Regular Burger",  60),
		(2, "Big Burger", 100),
        (3, "Pizza", 90),
        (4, "Soft Drinks", 25);
        
-- Now suppose I have added tissue paper and straws.
-- Customers can use them without paying separately,
-- so I do not provide a price for these products.

INSERT INTO products (serial_no, product_name)
VALUES	(5, "Tissue Paper"),
		(6, "Straw");

-- Now Let's see the table
SELECT * FROM products;

-- We can see that the price of Tissue Paper and Straw is automatically assigned 0.00.
-- This is how the DEFAULT constraint works.