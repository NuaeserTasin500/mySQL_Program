-- <HOPTEI>

-- Three Tables in a Database
--
-- A database can contain two or more tables.
--
-- We can divide different types of information into separate tables
-- to keep the database organized.
--
-- In this example, we are creating a university database with three tables:
--
--     1. students            -> stores student information
--     2. departments         -> stores department information
--     3. starting_semesters  -> stores information about the semester
--                               in which a student joined
--
-- Each table has its own PRIMARY KEY.
--
-- In the students table, std_id is the PRIMARY KEY
-- because every student must have a unique student ID.
--
-- In the departments table, dept_code is the PRIMARY KEY
-- because every department must have a unique department code.
--
-- In the starting_semesters table, starting_semester_code is the PRIMARY KEY
-- because every starting semester has a unique code.


CREATE DATABASE db033;
USE db033;


-- Table 1: Students
--
-- std_id is the PRIMARY KEY.
-- Every student has a unique student ID.
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
    current_semester VARCHAR(4)
);


-- Table 2: Departments
--
-- dept_code is the PRIMARY KEY.
-- Every department has a unique department code.
--
-- For example:
-- 60 -> CSE
-- 62 -> AE
-- 70 -> EEE
-- 90 -> BBA

CREATE TABLE departments
(
    dept_code INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


-- Table 3: Starting Semesters
--
-- starting_semester_code is the PRIMARY KEY.
-- Every starting semester has a unique code.
--
-- These codes represent the semester
-- in which a student joined the university.
--
-- 1 -> Spring
-- 2 -> Summer
-- 3 -> Fall

CREATE TABLE starting_semesters
(
    starting_semester_code INT PRIMARY KEY,
    starting_semester_name VARCHAR(20)
);


-- Student ID structure
--
-- Look at Arif Rahman's student ID: 22160903
--
-- 22  -> He joined the university in 2022.
-- 1   -> He joined in the Spring semester.
-- 60  -> His department is CSE.
-- 903 -> His unique identification number.
--
-- Therefore:
--
-- 22160903
-- │ │ │ └── 903 -> Student identification number
-- │ │ └──── 60  -> Department code (CSE)
-- │ └────── 1   -> Starting semester code (Spring)
-- └──────── 22  -> Year of joining (2022)
--
-- We cannot use something like 221CSE903 as the student ID
-- if the column is defined as INT, because INT stores numeric values.
--
-- Therefore, the department is represented by a numeric code:
--
-- 60 -> CSE
-- 62 -> AE
-- 70 -> EEE
-- 90 -> BBA


-- dept_short_form is NOT the PRIMARY KEY
-- because it is not unique for every student.
--
-- For example, multiple students can have "CSE"
-- as their department short form.
--
-- std_id uniquely identifies each student.
-- dept_code uniquely identifies each department.
-- starting_semester_code uniquely identifies each starting semester.


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


-- Insert data into departments

INSERT INTO departments
VALUES  (60, 'Computer Science and Engineering'),
        (62, 'Architecture Engineering'),
        (70, 'Electrical and Electronic Engineering'),
        (90, 'Business Administration');


-- Insert data into starting_semesters

INSERT INTO starting_semesters
VALUES  (1, 'Spring'),
        (2, 'Summer'),
        (3, 'Fall');


-- Display the tables

SELECT * FROM students;

SELECT * FROM departments;

SELECT * FROM starting_semesters;


-- So, this is how we can keep three tables in a database,
-- with each table storing different types of information.
