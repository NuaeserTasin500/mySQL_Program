-- CHECK constraint by ALTER TABLE
-- We can use CHECK constraint by ALTER TABLE 

CREATE DATABASE db025;
USE db025;

CREATE TABLE products
(
	product_id INT,
    product_name VARCHAR(25),
    product_model VARCHAR(25),
    price DECIMAL(10, 2)
);

-- INSERT IGNORE INFO is prohibited here 
INSERT INTO products
VALUES	(15624, 'Dell', 'Inspiron 15', 65000.00),
		(14233, 'HP', 'Pavilion 15', 70000.00),
        (12393, 'Lenovo', 'IdeaPad 3', 55000.00),
		(17845, 'Asus', 'VivoBook 15', 62000.00),
		(16432, 'Acer', 'Aspire 5', 58000.00),
		(17654, 'Huawei', 'MateBook D15', 68000.00);


-- Now we can add CHECK constraint by alter table
ALTER TABLE products
ADD CONSTRAINT chk CHECK (price <= 70000.00);


-- Now let's see the table
SELECT * FROM products;

