-- <HOPTEI>

-- PRIMARY KEY constraint
-- PRIMARY KEY is a SQL constraint that uniquely identifies each row in a table.
--
-- A PRIMARY KEY column:
--     1. Cannot contain duplicate values.
--     2. Cannot contain NULL values.
--
-- Therefore, every row must have a unique and non-NULL value in the PRIMARY KEY column.

-- Suppose, a university has students and they have student id numbers.
-- Their ID numbers can't be duplicate or NULL
-- So in this case, their ID numbers are PRIMARY KEY

CREATE DATABASE db028;
USE db028;

CREATE TABLE students(
	std_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dept VARCHAR(10),
    current_semester VARCHAR(4)
);

INSERT INTO students
VALUES	(22160903, "Arif", "Rahman", "CSE", "4th"), 
		(22260904, "Nusrat", "Jahan", "CSE", "3rd"),
        (22260905, "Fahim", "Ahmed", "CSE", "3rd"),
        (22162910, "Samira", "Sultana", "AE", "4th"),
        (22162555, "Oliver", "Bennett", "AE", "4th"),
        (22270478, "Emily", "Carter", "EEE", "3rd"),
        (22270700, "Haruto", "Tanaka", "EEE", "3rd"),
		(22290356, "Yuki", "Nakamura", "BBA", "3rd"),
		(22190888, "Ren", "Takahashi", "BBA", "4th");
        
SELECT * FROM students;

-- Here we can see the student's id numbers are unique and not null.
-- If I say 22160903, It means it is the id number of Arif Rahman

SELECT * FROM students WHERE std_id = 22160903; -- shows only Arif Rahman
