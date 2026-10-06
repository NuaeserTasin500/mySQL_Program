-- <HOPTEI>

-- AUTO_INCREMENT by ALTER TABLE
-- We can use starting number in AUTO_INCREMENT by using ALTER TABLE


CREATE DATABASE db031;
USE db031;

CREATE TABLE practise_table
(
	serial_no INT PRIMARY KEY AUTO_INCREMENT,
    lesson_name VARCHAR(50),
    execution_time DATETIME DEFAULT NOW()
);

ALTER TABLE practise_table
AUTO_INCREMENT = 1000; -- Starting point is 1000 instead of 1


INSERT INTO practise_table (lesson_name)
VALUES	("Hiragana Practise"),
		("Katakana Practise");
        

        
-- After 1 minute
INSERT INTO practise_table (lesson_name)
VALUES	("Kanji Practise"),
		("Furigana Usage Practise"),
        ("Japanese Number Practise");
        
        
-- After 3 minutes
INSERT INTO practise_table (lesson_name)
VALUES	("Japanese Greeting Practise"),
        ("Japanese Normal Practise");
        
-- Now let's check the table
SELECT * FROM practise_table;

-- We can see that serial_no is automatically generated,
-- starting from 1000 and increasing for each new row.