-- <HOPTEI>
-- INNER JOIN
--
-- INNER JOIN is an SQL operation that combines rows from two tables
-- when the specified joining condition matches in both tables.
--
-- WHY DO WE NEED INNER JOIN?
--
-- Suppose we have two tables:
--
-- 1. students
--    - Contains student information.
--    - Stores dept_code and dept_short_form.
--
-- 2. departments
--    - Contains department information.
--    - Stores dept_code and dept_name.
--
-- Sometimes, we may not know what a department's short form means.
-- For example:
--     CSE = Computer Science and Engineering
--     GEB = Genetic Engineering and Biochemistry
--     HRM = Human Resources and Management
--
-- Instead of storing the full department name repeatedly in the
-- students table, we can retrieve it from the departments table
-- by using INNER JOIN.
--
-- HOW DOES INNER JOIN WORK?
--
-- SQL compares the joining columns from both tables:
--
-- students.dept_code = departments.dept_code
--
-- If the department code matches in both tables,
-- SQL includes the combined row in the result.
--
-- If there is no matching department code,
-- that student is excluded from the INNER JOIN result.




-- RELATIONSHIP BETWEEN INNER JOIN AND FOREIGN KEY
--
-- In our example, students.dept_code is a FOREIGN KEY
-- that references departments.dept_code, which is the PRIMARY KEY.
--
-- This relationship allows us to combine information from
-- the students and departments tables using INNER JOIN.
--
-- The FOREIGN KEY establishes a relationship between the tables,
-- while INNER JOIN retrieves matching rows from those tables.
--
-- We use the ON clause to specify the joining condition:
--
-- ON students.dept_code = departments.dept_code
--
-- If the values match, SQL combines the corresponding rows.
--
-- NOTE:
-- INNER JOIN does not require a FOREIGN KEY constraint.
-- We can join tables using matching column values even
-- when no FOREIGN KEY relationship is defined.





CREATE DATABASE db038;
USE db038;


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
-- dept_code is a FOREIGN KEY referencing departments.dept_code.
--
-- A student's dept_code must match an existing department code
-- or be NULL, because dept_code is nullable.

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


-- Insert data into departments

INSERT INTO departments
VALUES
    (60, 'Computer Science and Engineering'),
    (62, 'Architecture Engineering'),
    (65, 'Civil Engineering'),
    (66, 'Cyber Security'),
    (67, 'Mathematics'),
    (68, 'Physics'),
    (70, 'Electrical and Electronic Engineering'),
    (72, 'Mechanical Engineering'),
    (75, 'Pharmacy'),
    (80, 'Chemistry'),
    (85, 'Genetic Engineering And Biochemistry'),
    (90, 'Business Administration'),
    (95, 'Human Resources and Management'),
    (98, 'Economics');

-- Department code 99 represents Data Science and Analytics (DSA)
-- in our example, but it does not exist in the departments table.


-- Insert data into students
--
-- Suppose some students belong to the DSA department.
-- However, we do not have that department in the departments table.
--
-- Therefore, their dept_code is NULL for this example.

INSERT INTO students
VALUES
    (22267701, 'Sadia', 'Rahman', 67, 'MAT', '3rd'),
    (22190888, 'Ren', 'Takahashi', 90, 'BBA', '4th'),
    (22275501, 'Nabila', 'Islam', 75, 'PHR', '3rd'),
    (22260905, 'Fahim', 'Ahmed', 60, 'CSE', '3rd'),
    (22166762, 'Oliver', 'Brown', 66, 'CYS', '4th'),
    (22269501, 'Ibrahim', 'Hossain', NULL, 'DSA', '3rd'),
    (22280123, 'Aisha', 'Khan', 80, 'SC', '3rd'),
    (22172202, 'Lucas', 'Meyer', 72, 'ME', '4th'),
    (22298001, 'Adnan', 'Mahmud', 98, 'ECO', '3rd'),
    (22162910, 'Samira', 'Sultana', 62, 'AE', '4th'),
    (22268801, 'Minjun', 'Kim', 68, 'PHY', '3rd'),
    (22285128, 'Tanvir', 'Hossain', 85, 'GEB', '4th'),
    (22165502, 'Mei', 'Lin', 65, 'CE', '4th'),
    (22270700, 'Haruto', 'Tanaka', 70, 'EEE', '3rd'),
    (22169502, 'Chloe', 'Anderson', NULL, 'DSA', '4th'),
    (22269503, 'Farhan', 'Ahmed', NULL, 'DSA', '3rd'),
    (22195642, 'Sophie', 'Martin', 95, 'HRM', '4th'),
    (22280101, 'Nafis', 'Karim', 80, 'CHE', '3rd'),
    (22162555, 'Oliver', 'Bennett', 62, 'AE', '4th'),
    (22266601, 'Raihan', 'Ahmed', 66, 'CYS', '3rd'),
    (22290356, 'Yuki', 'Nakamura', 90, 'BBA', '3rd'),
    (22168002, 'Daniel', 'Wilson', 68, 'PHY', '4th'),
    (22265501, 'Tanvir', 'Ahmed', 65, 'CE', '3rd'),
    (22270478, 'Emily', 'Carter', 70, 'EEE', '3rd'),
    (22185602, 'Jiwoo', 'Park', 85, 'GEB', '4th'),
    (22169504, 'Sakura', 'Ito', NULL, 'DSA', '4th'),
    (22280124, 'Daniel', 'Smith', 80, 'SC', '3rd'),
    (22160903, 'Arif', 'Rahman', 60, 'CSE', '4th'),
    (22285501, 'Samiha', 'Akter', 85, 'GEB', '3rd'),
    (22175502, 'Emma', 'Taylor', 75, 'PHR', '4th'),
    (22269505, 'Minseo', 'Choi', NULL, 'DSA', '3rd'),
    (22272201, 'Fahim', 'Chowdhury', 72, 'ME', '3rd'),
    (22198002, 'Kenji', 'Tanaka', 98, 'ECO', '4th'),
    (22285126, 'Rafi', 'Hasan', 85, 'GEB', '3rd'),
    (22167702, 'Yuki', 'Sato', 67, 'MAT', '4th'),
    (22295701, 'Mahin', 'Kabir', 95, 'HRM', '3rd'),
    (22185127, 'Sara', 'Ahmed', 85, 'GEB', '3rd'),
    (22169506, 'Oliver', 'Wilson', NULL, 'DSA', '4th'),
    (22260904, 'Nusrat', 'Jahan', 60, 'CSE', '3rd'),
    (22180902, 'Hana', 'Suzuki', 80, 'CHE', '4th');


-- Let's see all the records in the students table.

SELECT * FROM students;


-- We can see that some students have the short form 'DSA',
-- but their dept_code is NULL.
--
-- The DSA department has not been added to the departments table.
--
-- We may also want to know the full meaning of short forms
-- such as GEB, HRM, CYS, and MAT.
--
-- We can use INNER JOIN to retrieve the full department names.


-- INNER JOIN
--
-- The ON clause specifies the joining condition.
-- SQL matches students and departments using dept_code.

SELECT *
FROM students
INNER JOIN departments
ON students.dept_code = departments.dept_code;


-- EXPLANATION:
--
-- FROM students:
-- We start with the students table.
--
-- INNER JOIN departments:
-- We combine student information with department information.
--
-- ON students.dept_code = departments.dept_code:
-- SQL matches rows where the department codes are equal.
--
-- RESULT:
-- We can see student information and department information
-- together in the same result.
--
-- Students whose dept_code is NULL will not appear because
-- NULL does not match a department code.
--
-- If a student's dept_code has no matching department,
-- that student will not appear in the INNER JOIN result.
--
-- NOTE:
-- INNER JOIN retrieves matching rows from both tables.
-- It does not display every row from both tables.
