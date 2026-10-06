-- <HOPTEI>

-- PRIMARY KEY constraint by ALTER TABLE method
-- We can add PRIMARY KEY constraint by ALTER TABLE method

CREATE DATABASE db029;
USE db029;

CREATE TABLE students(
	std_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dept VARCHAR(10),
    semester INT
);


-- we can make std_id as primary key here        
ALTER TABLE students
ADD CONSTRAINT PRIMARY KEY (std_id);


INSERT INTO students
VALUES	(22160903, "Arif", "Rahman", "CSE", 3), 
		(22260904, "Nusrat", "Jahan", "CSE", 4),
        (22260905, "Fahim", "Ahmed", "CSE", 4),
        (22162910, "Samira", "Sultana", "AE", 3),
        (22162555, "Oliver", "Bennett", "AE", 3),
        (22270478, "Emily", "Carter", "EEE", 4),
        (22270700, "Haruto", "Tanaka", "EEE", 4),
		(22290356, "Yuki", "Nakamura", "BBA", 4),
		(22190888, "Ren", "Takahashi", "BBA", 3);



-- Now we can observe the table
SELECT * FROM students;
-- Here we can see the student's id numbers are unique and not null.
