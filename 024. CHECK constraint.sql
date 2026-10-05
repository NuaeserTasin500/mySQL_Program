-- <HOPTEI>

-- CHECK constraint
-- CHECK is a SQL constraint that ensures a value in a column satisfies a specific condition.
-- If the value satisfies the condition, the row can be inserted or updated.
-- If the value does not satisfy the condition, SQL rejects the insert or update.

-- Suppose we want to add the data of laptops which prices are lower than or equal 70000.00 

CREATE DATABASE db024;
USE db024;

CREATE TABLE products
(
	product_id INT,
    product_name VARCHAR(25),
    product_model VARCHAR(25),
    price DECIMAL(10, 2),
    CONSTRAINT chk_price CHECK (price <= 70000.00)
);



-- <1> {
INSERT INTO products
VALUES	(15624, 'Dell', 'Inspiron 15', 65000.00),
		(14233, 'HP', 'Pavilion 15', 70000.00),
        (12393, 'Lenovo', 'IdeaPad 3', 55000.00),
		(17845, 'Asus', 'VivoBook 15', 62000.00),
		(16432, 'Acer', 'Aspire 5', 58000.00),
		(18921, 'Apple', 'MacBook Air', 125000.00),
		(13567, 'MSI', 'Modern 14', 75000.00),
		(19876, 'Samsung', 'Galaxy Book', 85000.00),
		(14589, 'Microsoft', 'Surface Laptop', 110000.00),
		(17654, 'Huawei', 'MateBook D15', 68000.00);
-- } <1>

-- We notice that executing <1> shows error,
-- because prices of some laptops are more than 70000.00,
-- which violates the rule of price <= 70000.00
       
       
       
-- Okay, now let's fix this 
-- We will use IGNORE keyword <AI>
-- <2> {
INSERT IGNORE INTO products
VALUES	(15624, 'Dell', 'Inspiron 15', 65000.00),
		(14233, 'HP', 'Pavilion 15', 70000.00),
        (12393, 'Lenovo', 'IdeaPad 3', 55000.00),
		(17845, 'Asus', 'VivoBook 15', 62000.00),
		(16432, 'Acer', 'Aspire 5', 58000.00),
		(18921, 'Apple', 'MacBook Air', 125000.00),
		(13567, 'MSI', 'Modern 14', 75000.00),
		(19876, 'Samsung', 'Galaxy Book', 85000.00),
		(14589, 'Microsoft', 'Surface Laptop', 110000.00),
		(17654, 'Huawei', 'MateBook D15', 68000.00);
-- } <2>
       
-- We notice that executing <2> shows warnings,
-- because prices of some laptops are more than 70000.00,
-- which violates the rule of price <= 70000.00.
-- But this is not error at all
       
       
-- Now let's see the table
-- <3> {
SELECT * FROM products;
-- } <3>

-- <3> shows those laptops which prices are lower than or equal 70000.00 


-- So this is how check constraint works



-- Also we can keep only those products which prices are lower than or equal 70000.00
INSERT INTO products
VALUES	(15624, 'Dell', 'Inspiron 15', 65000.00),
		(14233, 'HP', 'Pavilion 15', 70000.00),
        (12393, 'Lenovo', 'IdeaPad 3', 55000.00),
		(17845, 'Asus', 'VivoBook 15', 62000.00),
		(16432, 'Acer', 'Aspire 5', 58000.00),
		(17654, 'Huawei', 'MateBook D15', 68000.00);
        
-- And then execute <3>. 
-- This is another method without error and warning


