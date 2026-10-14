
-- <HOPTEI>

-- FOREIGN KEY with Three Tables
--
-- A FOREIGN KEY is a column that connects one table
-- with another table.
--
-- It refers to the PRIMARY KEY of another table.
--
-- In this example, we have three tables:
--
-- 1. students            -> stores student information
-- 2. departments         -> stores department information
-- 3. starting_semesters  -> stores starting semester information
--
-- The students table contains two FOREIGN KEY columns:
--
-- 1. dept_code
--    -> refers to the department code in the departments table.
--
-- 2. starting_semester_code
--    -> refers to the semester code in the starting_semesters table.
--
-- These FOREIGN KEYs help prevent invalid department codes
-- and starting semester codes from being entered into students.


CREATE DATABASE db036;
USE db036;


-- Table 1: Departments
--
-- dept_code is the PRIMARY KEY.
-- Every department has a unique department code.

CREATE TABLE departments
(
    dept_code INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


-- Table 2: Starting Semesters
--
-- starting_semester_code is the PRIMARY KEY.
-- Every starting semester has a unique code.
--
-- 1 -> Spring
-- 2 -> Summer
-- 3 -> Fall

CREATE TABLE starting_semesters
(
    starting_semester_code INT PRIMARY KEY,
    starting_semester_name VARCHAR(20)
);


-- Table 3: Students
--
-- std_id is the PRIMARY KEY.
-- Every student has a unique student ID.
--
-- dept_code is a FOREIGN KEY.
-- It refers to the departments table.
--
-- starting_semester_code is also a FOREIGN KEY.
-- It refers to the starting_semesters table.
--
-- current_semester represents the semester
-- the student is currently studying in.

CREATE TABLE students
(
    std_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dept_code INT,
    dept_short_form VARCHAR(4),
    starting_semester_code INT,
    current_semester VARCHAR(4),
    FOREIGN KEY (dept_code) REFERENCES departments(dept_code),
    FOREIGN KEY (starting_semester_code) REFERENCES starting_semesters(starting_semester_code)
);


-- Insert data into departments first

INSERT INTO departments
VALUES	(60, 'Computer Science and Engineering'),
		(62, 'Architecture Engineering'),
		(70, 'Electrical and Electronic Engineering'),
		(90, 'Business Administration');


-- Insert data into starting_semesters

INSERT INTO starting_semesters
VALUES	(1, 'Spring'),
		(2, 'Summer'),
		(3, 'Fall');


-- Insert data into students
--
-- The starting semester code is taken from the student ID.
--
-- For example, 22160903:
-- 22 -> joined in 2022
-- 1  -> joined in Spring
-- 60 -> CSE
-- 903 -> identification number
--
-- The starting semester code is separate from current_semester.

INSERT INTO students
VALUES	(22160903, 'Arif', 'Rahman', 60, 'CSE', 1, '4th'),
		(22260904, 'Nusrat', 'Jahan', 60, 'CSE', 2, '3rd'),
		(22260905, 'Fahim', 'Ahmed', 60, 'CSE', 2, '3rd'),
		(22162910, 'Samira', 'Sultana', 62, 'AE', 1, '4th'),
		(22162555, 'Oliver', 'Bennett', 62, 'AE', 1, '4th'),
		(22270478, 'Emily', 'Carter', 70, 'EEE', 2, '3rd'),
		(22270700, 'Haruto', 'Tanaka', 70, 'EEE', 2, '3rd'),
		(22290356, 'Yuki', 'Nakamura', 90, 'BBA', 2, '3rd'),
		(22190888, 'Ren', 'Takahashi', 90, 'BBA', 1, '4th');


-- Display the tables

SELECT * FROM departments;

SELECT * FROM starting_semesters;

SELECT * FROM students;


-- How do the FOREIGN KEYs work?
--
-- Example 1:
-- If we try to insert a student with dept_code = 99,
-- MySQL rejects the INSERT because department 99 does not exist.
--
-- Example 2:
-- If we try to insert a student with starting_semester_code = 4,
-- MySQL rejects the INSERT because starting semester code 4
-- does not exist in the starting_semesters table.
--
-- Both FOREIGN KEYs ensure that the referenced records exist.


-- Example of an invalid department code:
--
-- INSERT INTO students
-- VALUES (22199903, 'Someone', 'Someone', 99, 'AAA', 1, '4th');


-- Example of an invalid starting semester code:
--
-- INSERT INTO students
-- VALUES (22199904, 'Someone', 'Someone', 60, 'CSE', 4, '4th');


-- Understanding the dot (.) notation
--
-- The dot tells us which table a column belongs to.
--
-- students.dept_code
-- -> dept_code from the students table.
--
-- departments.dept_code
-- -> dept_code from the departments table.
--
-- students.starting_semester_code
-- -> starting_semester_code from the students table.
--
-- starting_semesters.starting_semester_code
-- -> starting_semester_code from the starting_semesters table.
