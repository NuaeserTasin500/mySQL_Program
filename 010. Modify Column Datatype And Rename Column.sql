-- Now let's think that email need more characters like 100 characters, so we need to modify it
ALTER TABLE students
MODIFY COLUMN email VARCHAR(100);

-- We want to change the name of "email" as "email_address"
ALTER TABLE students 
RENAME COLUMN email TO email_address;

-- Let's check the columns again\
SELECT * FROM students