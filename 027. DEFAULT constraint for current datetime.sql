-- <HOPTEI>

-- DEFAULT constraint for current datetime
-- Suppose I have created a database of transaction where automatically gives current transaction time 

CREATE DATABASE db027;
USE db027;

CREATE TABLE tr_table
(
	transaction_id INT UNIQUE,
    transaction_name VARCHAR(50),
    execution_time DATETIME DEFAULT NOW()
);

-- DEFAULT NOW() means:
-- If I do not provide a execution_time value when inserting a row,
-- MySQL automatically assigns current date and time to the execution_time column.


-- For this time
INSERT INTO tr_table (transaction_id, transaction_name)
VALUES	(120, "Process"),
		(121, "Print"),
        (122, "Service");
        

        
-- After 1 minute
INSERT INTO tr_table (transaction_id, transaction_name)
VALUES	(145, "System"),
		(354, "Backend");
        
        
-- After 3 minutes
INSERT INTO tr_table (transaction_id, transaction_name)
VALUES	(223, "Dotsign"),
		(209, "Diagnosis"),
        (189, "Troubleshooting");
        
-- Now let's check the table
SELECT * FROM tr_table;

-- We can see the transaction execution time defaultly
