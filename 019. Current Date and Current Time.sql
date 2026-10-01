-- <HOPTEI>
-- <AI>
-- Current Date and Current Time

-- Suppose I am going to make a simple To-Do List database system.
-- I want to store the date and time when I start each task.
--
-- For example, today's Japanese-learning tasks are:
--
-- 1. Hiragana
-- 2. Katakana
-- 3. Kanji
--
-- I will start Hiragana first.
-- After 2 minutes, I will start Katakana.
-- After another 2 minutes, I will start Kanji.


CREATE DATABASE taskdb;
USE taskdb;

CREATE TABLE tasktable
(
	task_name VARCHAR(50),
    starting_date DATE,
    starting_time TIME
);


-- CURRENT_DATE()
-- CURRENT_DATE() returns today's current date.
--
-- Example:
-- If today is September 29, 2026,
-- CURRENT_DATE() returns:
--
-- 2026-09-29



-- CURRENT_TIME()
-- CURRENT_TIME() returns the current time.
--
-- Example:
-- If the current time is 01:30:25 PM,
-- CURRENT_TIME() returns approximately:
--
-- 13:30:25
--
-- The exact result depends on the time when the statement is executed.




-- Right now I am going to start learning Hiragana.
-- CURRENT_DATE() automatically gives today's date.
-- CURRENT_TIME() automatically gives the current time.

INSERT INTO tasktable
VALUES ('Hiragana practice', CURRENT_DATE(), CURRENT_TIME());



-- Let's see the table 
-- <1> {
SELECT * FROM tasktable;
-- } <1>

--  We can see the date and time when I started learning Hiragana.




-- Okay, 2 minutes have passed.
-- Now I am going to start learning Katakana.
-- Again, CURRENT_DATE() gives the current date.
-- CURRENT_TIME() gives the current time at this moment.
-- Therefore, the time will be different from the previous INSERT.

INSERT INTO tasktable
VALUES ('Katakana practice', CURRENT_DATE(), CURRENT_TIME());

-- Let's see the table by executing <1> 
-- We can now see the date and current time when I started learning Katakana.



-- Okay, another 2 minutes have passed.
-- Now I am going to start learning Kanji.

INSERT INTO tasktable
VALUES ('Kanji practice', CURRENT_DATE(), CURRENT_TIME());

-- Let's see the table by executing <1>.
-- We can now see the date and current time when I started learning Kanji.






-- FINAL RESULT <AI>

-- We have stored:
--
--     Task Name          Starting Date       Starting Time
--     ---------------------------------------------------
--     Hiragana practice  2026-09-29          13:20:10
--     Katakana practice  2026-09-29          13:22:10
--     Kanji practice     2026-09-29          13:24:10
--
-- The exact time will depend on when each INSERT statement is executed.
--
-- This is how CURRENT_DATE() and CURRENT_TIME() can be used
-- to automatically record when a task was started.
--
-- We can use this idea as a simple foundation for creating
-- a task manager or time-management system using SQL. :)

-- This is how we can create task manager by SQL to maintain our time management :)