-- ## Lesson 7 tasks:


-- 1) Select marks which is more than 6 and filter in descending order;
SELECT * FROM Mark WHERE mark > 6 ORDER BY mark DESC;

-- 2) Select payments which is less than 300 and filter in ascending order;
SELECT * FROM Payment WHERE amount < 300 ORDER BY amount ASC;

-- 3) Select payment types filtered alphabetically;
SELECT * FROM PaymentType ORDER BY name ASC;

-- 4) Select students filtered in reverse alphabetical order;
SELECT * FROM Student ORDER BY name DESC;

-- 5) Select students who have at least one payment more than 1000 and filter them by birthday date ASC.
SELECT DISTINCT st.* FROM Student AS st JOIN Payment AS p ON st.id = p.student_id WHERE p.amount > 1000 ORDER BY st.birthday ASC;