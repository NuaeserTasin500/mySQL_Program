-- <HOPTEI>

-- AUTO_INCREMENT
-- AUTO_INCREMENT is a SQL attribute that automatically generates a unique number for a column whenever a new row is inserted.
--
-- The number automatically increases for each new row.
-- Therefore, we do not need to manually provide a value for that column during INSERT.

-- For example: Serial No. 
-- We know that a Serial No. can start from 1 and then increase automatically for each new record.


CREATE DATABASE db030;
USE db030;

CREATE TABLE practise_table
(
	serial_no INT PRIMARY KEY AUTO_INCREMENT, -- AUTO_INCREMENT can't work without PRIMARY KEY or UNIQUE
    lesson_name VARCHAR(50),
    execution_time DATETIME DEFAULT NOW()
);

-- We don't need to add transaction_id in this case.
-- it will be automatically inserted

-- For this time
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
-- starting from 1 and increasing for each new row.