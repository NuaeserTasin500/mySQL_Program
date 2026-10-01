-- remove the table
CREATE TABLE students (
	std_id INT, 
    first_name VARCHAR(50), 
    last_name VARCHAR(50), 
    semester INT,
    cgpa DECIMAL(3, 2), 
    getting_cgpa_date DATE 
);

-- SELECT table's one column
SELECT std_id FROM students; 