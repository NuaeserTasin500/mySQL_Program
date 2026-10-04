-- <HOPTEI>

-- ALTER TABLE
-- In previous code we have learned how to 
--   	- add column,
--   	- modify column datatype
--   	- rename column name
--   	- delete a column
-- by ALTER TABLE

-- we will learn more about ALTER TABLE

CREATE DATABASE db023;
USE db023;

CREATE TABLE products
(
	product_id INT,
    product_name VARCHAR(25),
    product_model VARCHAR(25),
    price DECIMAL(10, 2)
);

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
        
-- <1> {
SELECT * FROM products;
-- } <1>



-- Add a new column by ALTER TABLE
ALTER TABLE products
ADD grade VARCHAR(2);

-- Now let's check by <1>
-- We can see that there is a new column 'grade' created
-- But values are null because no values are added here
-- Let's add values 
-- Grade A is those laptops which prices are lower than 75000.00
-- Grade B is those laptops which prices are higher than or equal 75000.00
SET SQL_SAFE_UPDATES = 0;
UPDATE products 
SET grade = 'A' WHERE price < 75000.00;
--
UPDATE products 
SET grade = 'B' WHERE price >= 75000.00;
-- Now let's check by <1>
-- We can see the values of grade





-- Change the name of column by ALTER TABLE
ALTER TABLE products
RENAME COLUMN grade TO product_grade;
-- Now let's check by <1>
-- We can see that column name 'grade' has changed as 'product_grade'





-- Modify the datatype of column by ALTER TABLE
ALTER TABLE products
MODIFY product_model VARCHAR(100);
-- It will change VARCHAR(25) to VARCHAR(100)





-- Add UNIQUE constraint by ALTER TABLE
ALTER TABLE products 
MODIFY product_id INT UNIQUE;
-- It will make product_id as unique





-- Add NOT NULL constraint by ALTER TABLE
ALTER TABLE products
MODIFY price DECIMAL(10, 2) NOT NULL;
-- It will make price as NOT NULL





-- Drop a column by ALTER TABLE
ALTER TABLE products
DROP COLUMN product_grade;
-- Now let's check by <1>
-- We can see that product_grade column has been deleted





-- We have learned that how to add NOT NULL and UNIQUE by ALTER TABLE
 

