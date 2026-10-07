-- <HOPTEI>

-- Two Tables in a Database
--
-- A database can contain two or more tables.
--
-- We can divide different types of information into separate tables to keep the database organized.
--
-- In this example, we are creating a university database with two tables:
--
--     1. students     -> stores student information
--     2. departments  -> stores department information
--
-- Each table has its own PRIMARY KEY.
--
-- In the students table, std_id is the PRIMARY KEY
-- because every student must have a unique student ID.
--
-- In the departments table, dept_code is the PRIMARY KEY
-- because every department must have a unique department code.


CREATE DATABASE db032;
USE db032;


-- Table 1: Students
--
-- std_id is the PRIMARY KEY.
-- Every student has a unique student ID.

CREATE TABLE students
(
    std_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dept_code INT,
    dept_short_form VARCHAR(4),
    semester INT
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


-- dept_short_form is NOT the PRIMARY KEY
-- because it is not unique for every student.
--
-- For example, multiple students can have "CSE"
-- as their department short form.
--
-- std_id uniquely identifies each student.
-- dept_code uniquely identifies each department.


-- Student ID structure
--
-- Look at Arif Rahman's student ID: 22160903
--
-- 22  -> He joined in 2022.
-- 1   -> He joined in the Spring semester.
-- 60  -> His department is CSE.
-- 903 -> His unique identification number.
--
-- Therefore:
--
-- 22160903
-- │ │ │ └── 903 -> Student identification number
-- │ │ └──── 60  -> CSE
-- │ └────── 1   -> Spring semester
-- └──────── 22  -> Joined in 2022
--
-- We cannot use something like 221CSE903 as the student ID
-- if the column is defined as INT, because INT can store
-- only numeric values.
--
-- Therefore, the department is represented by a numeric code:
--
-- 60 -> CSE
-- 62 -> AE
-- 70 -> EEE
-- 90 -> BBA



-- Insert data into students

INSERT INTO students
VALUES
    (22160903, 'Arif', 'Rahman', 60, 'CSE', 3),
    (22260904, 'Nusrat', 'Jahan', 60, 'CSE', 4),
    (22260905, 'Fahim', 'Ahmed', 60, 'CSE', 4),
    (22162910, 'Samira', 'Sultana', 62, 'AE', 3),
    (22162555, 'Oliver', 'Bennett', 62, 'AE', 3),
    (22270478, 'Emily', 'Carter', 70, 'EEE', 4),
    (22270700, 'Haruto', 'Tanaka', 70, 'EEE', 4),
    (22290356, 'Yuki', 'Nakamura', 90, 'BBA', 4),
    (22190888, 'Ren', 'Takahashi', 90, 'BBA', 3);


-- Insert data into departments

INSERT INTO departments
VALUES
    (60, 'Computer Science and Engineering'),
    (62, 'Architecture Engineering'),
    (70, 'Electrical and Electronic Engineering'),
    (90, 'Business Administration');


-- Display the tables

SELECT * FROM students;

SELECT * FROM departments;

-- So, this is how we can keep two tables in a database,
-- with each table storing different types of information.