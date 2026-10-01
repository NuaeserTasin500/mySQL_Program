-- <HOPTEI>
-- UNIQUE KEYWORD
--
-- UNIQUE means:
-- "A value in this column cannot be duplicated."


-- Suppose we are creating a university student database.
-- Every student has a unique student ID.
-- However, two students can have:
--     - the same first name
--     - the same last name
--     - the same department
-- But their student IDs must be different.
-- Two students cannot have the same student ID.
-- Therefore, we can use the UNIQUE keyword for student_id.


CREATE DATABASE unidb;
USE unidb;


CREATE TABLE students
(
    student_id INT UNIQUE,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    department VARCHAR(20)
);


INSERT INTO students
VALUES	(1001, 'Arifur', 'Rahman', 'CSE'),
		(1002, 'Arifur', 'Rahman', 'CSE'),
		(1003, 'Nusrat', 'Jahan', 'CSE'),
		(1004, 'Ramisa', 'Jahan', 'CSE'),
		(1005, 'Fahim', 'Ahmed', 'EEE'),
		(1006, 'Fahim', 'Rahman', 'EEE');


-- Let's see the table.

SELECT * FROM students;


-- We can see that:
--
-- Arifur Rahman appears twice.
-- Two students can have the same first name and last name.
-- They can even study in the same department.
--
-- This is allowed because first_name and last_name are not UNIQUE.
--
-- department is also not UNIQUE because many students can belong to the same department.
--
-- Nusrat Jahan and Ramisa Jahan have the same last name
-- and they are both from CSE.
--
-- Fahim Ahmed and Fahim Rahman have the same first name
-- and they are both from EEE.
--
--
-- However, every student_id is different.
-- This is called UNIQUE IDENTIFICATION.
--
-- A student ID identifies a particular student.
--
-- Think about real-life identification numbers:
--     NID number
--     Passport number
-- One person's NID number should not be the same as another person's NID number.
-- Similarly, one person's passport number should not be the same as another person's passport number.
--
-- These numbers are used to uniquely identify individuals.



-- ============================================================
-- TRYING TO INSERT A DUPLICATE STUDENT ID
-- ============================================================

-- Suppose we try to insert another student
-- with student_id 1001.

INSERT INTO students
VALUES	(1001, 'Oliver', 'Bennett', 'BBA');


-- ERROR!
--
-- The INSERT statement fails because student_id 1001 already exists in the table.
--
-- UNIQUE prevents duplicate values in the student_id column.


-- ============================================================
-- MAIN IDEA
-- ============================================================

-- UNIQUE means:
-- "A value in this column cannot be duplicated."
--
-- Here:
-- student_id INT UNIQUE
-- it means every student must have a different student_id.
-- Other columns can still contain duplicate values.