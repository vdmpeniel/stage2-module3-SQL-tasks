SELECT * FROM Mark WHERE mark > 6 ORDER BY mark DESC;

SELECT * FROM Payment WHERE amount < 300 ORDER BY amount ASC;

SELECT * FROM PaymentType ORDER BY name ASC;

SELECT * FROM Student ORDER BY name DESC;

SELECT DISTINCT st.* FROM Student AS st JOIN Payment AS p ON st.id = p.student_id WHERE p.amount > 1000 ORDER BY st.birthday ASC;