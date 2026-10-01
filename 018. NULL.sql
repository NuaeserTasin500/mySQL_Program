-- NULL

-- In "013. Insert Data Into Database Table (New Database, New Table).sql" file, 
-- We have learned that how to add data into a table which has missing values by using separate INSERT INTO code.
--
-- However, there is an easier way. We can use NULL for a missing value.
--
-- When we use NULL, we can insert all the rows using ONE INSERT INTO statement 
-- instead of creating a separate INSERT INTO statement for every row that has a missing value.

-- For example:
CREATE DATABASE db017;
USE db017;

CREATE TABLE students(
	std_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    semester INT,
    cgpa DECIMAL(3, 2),
    getting_cgpa_date DATE
);

-- suppose we have nine students
-- 
-- Arif Rahman
-- Nusrat Jahan
-- Fahim Ahmed
-- Samira Sultana
-- Oliver Bennett
-- Emily Carter
-- Haruto Tanaka (田中 悠斗)
-- Yuki Nakamura (中村 雪)
-- Ren Takahashi (高橋 蓮)
-- 
-- We want to add their info into the table 
-- Emily Carter's semester data is missing and Haruto Tanaka's getting_cgpa_date data is missing.
-- In this case we can use NULL and we don't need to create separate INSERT INTO statement

INSERT INTO students
VALUES	(3081, "Arif", "Rahman", 3, 3.56, "2022-03-04"), -- means Arif Rahman get cgpa 3.56 in 2022-03-04 when his semester was 3rd
		(3082, "Nusrat", "Jahan", 4, 3.57, "2022-03-05"),
        (3083, "Fahim", "Ahmed", 4, 3.57, "2022-03-06"),
        (3084, "Samira", "Sultana", 3, 3.55, "2022-03-08"),
        (3085, "Oliver", "Bennett", 3, 2.67, "2022-03-08"),
        (3086, "Emily", "Carter", NULL, 3.50, "2022-03-08"),
        (3087, "Haruto", "Tanaka", 4, 2.68, NULL),
        (3088, "Yuki", "Nakamura", 4, 3.66, "2022-03-10"),
		(3089, "Ren", "Takahashi", 3, 2.69, "2022-03-11");
        
-- Notice the NULL values:
--
-- Emily Carter:
--     semester = NULL
--
-- This means Emily's semester information is missing or unknown.
--
--
-- Haruto Tanaka:
--     getting_cgpa_date = NULL
--
-- This means Haruto's CGPA date is missing or unknown.
--
--
-- We did NOT need to create another INSERT INTO statement.
-- NULL allows us to represent missing information directly
-- inside the same INSERT INTO statement.


-- Now let's see the table.

SELECT * FROM students;

-- We can see the NULL values in the table.
--
-- Therefore, NULL is useful when we do not have a value for a particular
-- column but still want to insert the rest of the row.
--
-- In this way, we can insert multiple rows with missing values using a single INSERT INTO statement.