-- <HOPTEI>
-- Datetime And Now

-- We have placed current date and current time by two seperate columns in previous code
-- But  we can place current date and current time by one column
-- in this case, datatype must be DATETIME and it's value must be NOW()
-- NOW() stored both current date and current time
-- I am going to modify the previous code as DATETIME and NOW()

CREATE DATABASE taskdb;
USE taskdb;

CREATE TABLE tasktable
(
	task_name VARCHAR(50),
    starting_date_and_time DATETIME
);


INSERT INTO tasktable
VALUES ('Hiragana practice', NOW());

SELECT * FROM tasktable;

INSERT INTO tasktable
VALUES ('Katakana practice', NOW());

INSERT INTO tasktable
VALUES ('Kanji practice', NOW());
