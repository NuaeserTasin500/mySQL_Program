-- <HOPTEI>: Highlight only the part of the code you want to execute, and then execute it.
-- This means you need to highlight each part of the code separately before executing it.
-- You cannot execute the entire code at once.

 
-- Suppose we need to only check Arif Rahman's data
-- So we can use WHERE keyword 
-- (HTPTEI) means "Highlight this part and then execute that" 
-- v(HTPTEI) to ^(HTPTEI) means "Highlight these parts and then execute that" (up to down)

SELECT * FROM students WHERE std_id = 3081; -- (HTPTEI) shows Arif Rahman's data. 

-- we can do that by other columns too. Suppose we want to find data by last_name = "Nakamura"
SELECT * FROM students WHERE last_name = "Nakamura"; -- (HTPTEI)


-- Suppose there are three Japanese students whose names are "Shingo Kusanagi", "Kyo Kusanagi" and "Saisyu Kusanagi"
-- Let's add them in our students table
-- v(HTPTEI)
INSERT INTO students
VALUES	(3090, "Shingo", "Kusanagi", 5, 3.67, "2022-03-11"),
		(3091, "Kyo", "Kusanagi", 5, 3.64, "2022-03-12"),
        (3092, "Saisyu", "Kusanagi", 6, 3.40, "2022-03-12");
-- ^(HTPTEI)

-- Now let's check the whole student table
SELECT * FROM students; -- (HTPTEI). It shows whole student data with Shingo Kusanagi, Kyo Kusanagi and Saisyu Kusanagi

-- Now I want to observe only those students' data who's family name is "Kusanagi"
SELECT * FROM students WHERE last_name = "Kusanagi"; -- (HTPTEI). It shows only those students who's names are Kusanagi 

-- But suppose that I want to check only Kyo Kusanagi's data
SELECT * FROM students WHERE first_name = "Kyo"; -- (HTPTEI). It shows only Kyo Kusanagi's data. 

-- So this is how we can check a student's data by using WHERE keyword

-- Now suppose there are students who's names are "Kyo Yamazaki", "Kyo Yamaguchi" etc 
-- v(HTPTEI)
INSERT INTO students
VALUES	(3093, "Kyo", "Yamazaki", 5, 3.62, "2022-03-11"),
		(3094, "Kyo", "Yamaguchi", 5, 3.64, "2022-03-12");
-- ^(HTPTEI)

-- Now let's check the whole student table
SELECT * FROM students; -- (HTPTEI). It shows whole student data with Kyo Yamazaki and Kyo Yamaguchi.

-- If we only use WHERE first_name = "Kyo", then I can't get only Kyo Kusanagi, rather I will get Kyo Yamazaki, Kyo Yamaguchi with Kyo Kusanagi
SELECT * FROM students WHERE first_name = "Kyo"; -- (HTPTEI). It shows Kyo Kusanagi, Kyo Yamazaki and Kyo Yamaguchi.


-- But I need to check only Kyo Kusanagi's data, not Kyo Yamazaki and Kyo Yamaguchi.
-- In this case we need to use Kyo Kusanagi std_id, not his first_name or last_name.
SELECT * FROM students WHERE std_id = 3091; -- (HTPTEI). Now it shows Kyo Kusanagi's data

-- So this is how we can use WHERE keyword and get individual data
