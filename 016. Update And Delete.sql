-- <HOPTEI>
-- UPDATE and DELETE

-- UPDATE keyword
-- Before UPDATE and DELETE, you must disable safe update mode in MYSQL workbench
SET SQL_SAFE_UPDATES = 0; -- (HTPTEI) <AI>


-- Let's look at the students table first
SELECT * FROM students; -- (HTPTEI)

-- Suppose we have done a grave mistake. We have mistakenly written "Ryuji Yamazaki" as "Kyo Yamazaki".
-- Right now Ryuji Yamazaki is angry after noticing this thing :(
-- We need to change this name as soon as possible
-- So what we need to do is using UPDATE keyword and then we do this correction
-- v(HTPTEI)
UPDATE students
SET first_name = "Ryuji" 
WHERE std_id = 3093; -- std_id of Kyo Yamazaki is 3093 and we want to change it's first name as Ryuji.
-- ^(HTPTEI)

-- now let's check
SELECT * FROM students; -- (HTPTEI)

-- Now Ryuji Yamazaki's angerness gone :)

-- Now suppose Saisyu Kusanagi is confused because he noticed that his semester is 6 and cgpa is 3.40 but his semester is 5 and cgpa is 3.50
-- Saisyu Kusanagi told us to fix this problem immedietly, now we need to change his two data (semester and cgpa)
-- v(HTPTEI)
UPDATE students
SET semester = 5, cgpa = 3.50 WHERE std_id = 3092;
-- ^(HTPTEI)

-- Now we can check this issue
SELECT * FROM students; -- (HTPTEI)

-- Now his confusion gone :)



-- Bulk Update
-- Suppose we want to give all students as cgpa 3.50
-- Then we won't use WHERE keyword after SET
-- v(HTPTEI)
UPDATE students
SET cgpa = 3.50;
-- ^(HTPTEI)

-- Now we will check that
SELECT * FROM students; -- (HTPTEI) All students have got cgpa = 3.50



-- DELETE keyword
-- It can delete a column or whole table's row

-- Delete a row
-- suppose we want to delete "Kyo Yamaguchi" column
-- v(HTPTEI)
DELETE FROM students
WHERE std_id = 3094;
-- ^(HTPTEI)

-- Now we will check that
SELECT * FROM students; -- (HTPTEI) No Kyo Yamaguchi here

-- Delete whole table
DELETE FROM students; -- (HTPTEI)

-- Now we will check that
SELECT * FROM students; -- (HTPTEI) No rows!



-- Okay So we have known how to insert data, how to insert null data, how to update and delete data
-- Now We are going to delete whole database, because we are going to create another database example  
DROP DATABASE my_db; -- (HTPTEI)

-- bye bye :)

