-- Database Table Creation

ALTER DATABASE my_database READ ONLY = 0; -- In Previous Code we have turned on read only mode, now we have turned off read only mode 

CREATE TABLE students (
	std_id INT, -- INT means integer 
    first_name VARCHAR(50), -- varchar(50) means maximum 50 characters we can give in first_name
    last_name VARCHAR(50), -- maximum 50 characters we can give in last_name
    semester INT,
    cgpa DECIMAL(3, 2), -- DECIMAL(3, 2) means 0.00; if DECIMAL(4, 2) it would be 00.00; if DECIMAL (5, 2) it would be 000.00
    getting_cgpa_date DATE -- DATE means date datatype
);

-- SELECT table
SELECT * FROM students; -- shows columns but no data because we have not put value right now