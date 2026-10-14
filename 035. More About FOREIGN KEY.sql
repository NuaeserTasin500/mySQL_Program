-- <HOPTEI>

-- More About FOREIGN KEY

CREATE DATABASE db035;
USE db035;

CREATE TABLE departments
(
    dept_code INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE students
(
    std_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dept_code INT,
    dept_short_form VARCHAR(4),
    current_semester VARCHAR(4)
);

-- We can create FOREIGN KEY by ALTER TABLE method
ALTER TABLE students 
ADD CONSTRAINT fk_dept FOREIGN KEY (dept_code) REFERENCES departments(dept_code);


INSERT INTO departments
VALUES	(60, 'Computer Science and Engineering'),
		(62, 'Architecture Engineering'),
		(70, 'Electrical and Electronic Engineering'),
		(90, 'Business Administration');

INSERT INTO students
VALUES	(22160903, 'Arif', 'Rahman', 60, 'CSE', '4th'),
		(22260904, 'Nusrat', 'Jahan', 60, 'CSE', '3rd'),
		(22260905, 'Fahim', 'Ahmed', 60, 'CSE', '3rd'),
		(22162910, 'Samira', 'Sultana', 62, 'AE', '4th'),
		(22162555, 'Oliver', 'Bennett', 62, 'AE', '4th'),
		(22270478, 'Emily', 'Carter', 70, 'EEE', '3rd'),
		(22270700, 'Haruto', 'Tanaka', 70, 'EEE', '3rd'),
		(22290356, 'Yuki', 'Nakamura', 90, 'BBA', '3rd'),
		(22190888, 'Ren', 'Takahashi', 90, 'BBA', '4th');

SELECT * FROM departments;

SELECT * FROM students;


-- If we add dept_code 99 in students table which doesn't exist in deptartments table
INSERT INTO students
VALUES	(22199903, 'Someone', 'Someone', 99, 'AAA', '4th');
-- It will show error 

-- This is how we can create FOREIGN key by ALTER TABLE



-- Dropping FOREIGN KEY
-- We can drop FOREIGN KEY by ALTER TABLE
-- In this case we need to go to this path 
-- SCHEMAS > db035 > Tables > students > Foreign Keys
-- We can see one foreign keys --> fk_dept
-- We need to remove this.

ALTER TABLE students
DROP FOREIGN KEY fk_dept;

-- Now If we add dept_code 99 in students table which doesn't exist in deptartments table
INSERT INTO students
VALUES	(22199903, 'Someone', 'Someone', 99, 'AAA', '4th');
-- It won't show error because foreign key is dropped
SELECT * FROM students;
-- We can see that Someone Someone is added in the student table

-- So this is how we can drop the foreign key