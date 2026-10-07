-- creating a new database and select it
CREATE DATABASE my_db;
USE my_db;

-- create a table named "students"
CREATE TABLE students(
	std_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    semester INT,
    cgpa DECIMAL(3, 2),
    getting_cgpa_date DATE
);

-- suppose we have nine students
-- Arif Rahman
-- Nusrat Jahan
-- Fahim Ahmed
-- Samira Sultana
-- Oliver Bennett
-- Emily Carter
-- Haruto Tanaka (田中 悠斗)
-- Yuki Nakamura (中村 雪)
-- Ren Takahashi (高橋 蓮)
-- We want to add their info into the table 

INSERT INTO students
VALUES	(3081, "Arif", "Rahman", 3, 3.56, "2022-03-04"), -- means Arif Rahman get cgpa 3.56 in 2022-03-04 when his semester was 3rd
		(3082, "Nusrat", "Jahan", 4, 3.57, "2022-03-05"),
        (3083, "Fahim", "Ahmed", 4, 3.57, "2022-03-06"),
        (3084, "Samira", "Sultana", 3, 3.55, "2022-03-08"),
        (3085, "Oliver", "Bennett", 3, 2.67, "2022-03-08");

-- suppose Emily Carter's semester data is missing and Haruto Tanaka's getting_cgpa_date data is missing.
-- Now we need to Insert their data in different way

-- For Emily Carter
INSERT INTO students (std_id, first_name, last_name, cgpa, getting_cgpa_date)
VALUES	(3086, "Emily", "Carter", 3.50, "2022-03-08");

-- For Haruto Tanaka
INSERT INTO students (std_id, first_name, last_name, semester, cgpa)
VALUES	(3087, "Haruto", "Tanaka", 4, 2.68);

-- Now let's add data of Yuki Nakamura and Ren Takahashi
INSERT INTO students
VALUES	(3088, "Yuki", "Nakamura", 4, 3.66, "2022-03-10"),
		(3089, "Ren", "Takahashi", 3, 2.69, "2022-03-11");
        
-- Let's observe the whole table
SELECT * FROM students;

--  So this is how we can add data into a table

-- P.S.: In MySQL, we can use either single quotes ('') or double quotes ("") for writing string values in many SQL statements.
