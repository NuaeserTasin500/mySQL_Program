-- <HOPTEI>
-- Next programs, I won't show (HTPTEI) and v(HTPTEI) ^(HTPTEI)
-- because we know how to perform these types of executions.

-- AUTOCOMMIT, COMMIT, ROLLBACK

SELECT @@AUTOCOMMIT;
-- Before we learn about AUTOCOMMIT, COMMIT, and ROLLBACK,
-- I am going to create a database and table first.


-- First I execute code point <1> for creating a database, creating a table and disabling sql safe updates
-- <1> {
SET SQL_SAFE_UPDATES = 0;

CREATE DATABASE KingFight;
USE KingFight;

CREATE TABLE theKingOfFighters
(
    Serial_No INT,
    Player_Name VARCHAR(50)
);
-- } <1>




-- For inserting values into the table, I execute code point <2>
-- <2> {
INSERT INTO theKingOfFighters
VALUES
(1, 'Kyo Kusanagi'),
(2, 'Iori Yagami'),
(3, 'Terry Bogard'),
(4, 'Ralf Jones'),
(5, 'Clark Steel');
-- } <2>



-- For checking the table, I execute code point <3>
-- <3> {
SELECT * FROM theKingOfFighters;
-- } <3>




-- Now we need to understand what a Transaction is.
-- A transaction is a set of SQL changes that can be either SAVED completely or UNDONE completely.
--
-- For example, suppose I mistakenly write and execute this code:

DELETE FROM theKingOfFighters;

-- Now I execute <3>. Oh shit! All the data are gone!
--
-- First of all, the DELETE statement is a SQL operation that can be part of a transaction.
-- I can either SAVE the change completely using COMMIT or UNDO the change using ROLLBACK.
--
-- But I can't UNDO this change right now.
-- The change has already been automatically SAVED.
--
-- In the initial/default state, AUTOCOMMIT = ON.
-- Therefore, after executing the DELETE statement,
-- the change is automatically committed.
--
-- So, I cannot use ROLLBACK now to undo this DELETE.




-- AUTOCOMMIT
-- In the initial/default state, AUTOCOMMIT = ON.
--
-- When AUTOCOMMIT is ON, each SQL statement is automatically committed after execution.
-- Therefore, if I want to manually decide whether to COMMIT or ROLLBACK my changes, I can turn AUTOCOMMIT OFF.

SET AUTOCOMMIT = OFF;





-- ROLLBACK
-- ROLLBACK is a SQL command that undoes the changes I have made in a transaction since the last COMMIT.
--
-- Okay, first I execute <2> and <3>.
-- I can see that all the data are in my table. Now I need to save those data by COMMIT since I have turned off AUTOCOMMIT.

-- Why do I need to use COMMIT here?
--
-- I have already turned AUTOCOMMIT OFF.
-- Therefore, when I execute <2>, the inserted data are not automatically committed.
--
-- I want these inserted data to be my SAFE STARTING POINT for demonstrating ROLLBACK.
-- Therefore, I use COMMIT now.
--
-- After COMMIT:
--     The inserted data are permanently saved.
--     Then, if I accidentally DELETE the data,
--     ROLLBACK can undo only that DELETE.
--
-- In simple words:
--     COMMIT here creates a SAFE POINT.
--     ROLLBACK will undo the changes made after that point.

COMMIT;

-- Now I am going to delete all the table data by mistake.

DELETE FROM theKingOfFighters;

-- I have executed this transaction.
-- Let me check the table by <3>.
-- Oh shit! I have lost all the data again!
--
-- How can I get the data back?
-- Oh yes, let me use ROLLBACK.

ROLLBACK;

-- Now I check the table by <3> again.
-- Hurray! I have got my data back!






-- COMMIT
-- COMMIT is a SQL command that permanently saves the changes I have made in a transaction.
--
-- Now AUTOCOMMIT is OFF, so the changes I make will NOT be automatically saved.
--
-- First, I check the table by <3>.

-- <4> {
UPDATE theKingOfFighters
SET Player_Name = 'Kyo (Updated)'
WHERE Serial_No = 1;
-- } <4>

-- Now I check the table by <3>.
-- I can see that the Player_Name has been changed.
--
-- But the change is not permanently saved yet because
-- AUTOCOMMIT is OFF.
--
-- If I use ROLLBACK now, the change will be undone.
-- But I want to permanently save the change.
--
-- So, I use COMMIT.

COMMIT;

-- Now the change has been permanently saved.
--
-- If I use ROLLBACK after COMMIT, it will NOT undo
-- this UPDATE because the change has already been committed.