-- <HOPTEI>

-- FOREIGN KEY
--
-- A FOREIGN KEY is a column that connects one table with another table.
-- It refers to the PRIMARY KEY of another table.
--
-- In our example, the departments table contains the department codes of all departments.
-- The students table also contains a department code to show which department each student belongs to.
--
-- We can connect these two tables using a FOREIGN KEY.
--
-- The department code in the students table will refer to the department code in the departments table.
-- This helps prevent invalid department codes from being entered into the students table.


CREATE DATABASE db034;
USE db034;


-- Table 1: Departments
--
-- dept_code is the PRIMARY KEY.
-- Every department has a unique department code.

CREATE TABLE departments
(
    dept_code INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


-- Table 2: Students
--
-- std_id is the PRIMARY KEY.
-- Every student has a unique student ID.
--
-- dept_code is the FOREIGN KEY.
-- It connects each student to a department.
--
-- The dept_code in the students table
-- refers to the dept_code in the departments table.

CREATE TABLE students
(
    std_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dept_code INT,
    dept_short_form VARCHAR(4),
    current_semester VARCHAR(4),
    FOREIGN KEY (dept_code) REFERENCES departments(dept_code)
);


-- Insert data into departments first
--
-- The departments must exist before we can
-- assign students to those departments.

INSERT INTO departments
VALUES	(60, 'Computer Science and Engineering'),
		(62, 'Architecture Engineering'),
		(70, 'Electrical and Electronic Engineering'),
		(90, 'Business Administration');


-- Insert data into students

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


-- Display the tables

SELECT * FROM departments;

SELECT * FROM students;




-- How does the FOREIGN KEY work?
--
-- Suppose we try to insert a student with dept_code = 99.

INSERT INTO students
VALUES	(22199903, 'Someone', 'Someone', 99, 'AAA', '4th');

-- But there is no department with dept_code = 99 in the departments table.
--
-- Therefore, MySQL will reject the INSERT.
--
-- This is because the FOREIGN KEY ensures that
-- the department code used by a student
-- must exist in the departments table.


-- Understanding the connection:
--
-- DEPARTMENTS
--
-- 60 -> Computer Science and Engineering
-- 62 -> Architecture Engineering
-- 70 -> Electrical and Electronic Engineering
-- 90 -> Business Administration
--
--
-- STUDENTS
--
-- Arif   -> 60
-- Nusrat -> 60
-- Fahim  -> 60
-- Samira -> 62
-- Oliver -> 62
-- Emily  -> 70
-- Haruto -> 70
-- Yuki   -> 90
-- Ren    -> 90
--
--
-- For example:
--
-- Arif has dept_code 60.
--
-- We look at the departments table and find:
-- 60 -> Computer Science and Engineering
-- Therefore, Arif belongs to the Computer Science and Engineering department.




-- Dot (.) notation
--
-- You may see SQL written like:
--
-- students.dept_code
-- departments.dept_code
--
-- The dot (.) tells us which table a column belongs to.
--
-- students.dept_code -> dept_code from the students table
-- departments.dept_code -> dept_code from the departments table
--
-- So, students.dept_code means:
-- "the dept_code column from the students table."
--
-- And departments.dept_code means:
-- "the dept_code column from the departments table."