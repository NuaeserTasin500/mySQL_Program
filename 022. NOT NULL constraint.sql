-- <HOPTEI>

-- NOT NULL
-- NOT NULL constraint means: "This column cannot contain NULL."

-- Suppose we have a database of Laptop prices. 

CREATE DATABASE db022;
USE db022;

CREATE TABLE products
(
	product_id INT UNIQUE,
    product_name VARCHAR(25),
    product_price VARCHAR(25),
    price DECIMAL(10, 2) NOT NULL
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
        
SELECT * FROM products;


-- If we add this
INSERT INTO products
VALUES	(11112, 'Acer', 'Aspire 6', NULL);
-- It will fail
