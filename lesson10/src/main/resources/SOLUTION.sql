-- ## Lesson 10 tasks:

-- 1) Select all columns from Subject where average mark for that subject is more than average mark for all subjects
SELECT s.* FROM Subject AS s INNER JOIN Mark AS m ON m.subject_id = s.id GROUP BY s.id HAVING AVG(m.mark) > ( SELECT AVG(mark) FROM Mark);

-- 2) Select all students who paid for school less than average paid amount for all students
SELECT s.* FROM Student AS s INNER JOIN Payment AS p ON s.id = p.student_id GROUP BY s.id HAVING SUM(p.amount) < (SELECT AVG(amount) FROM Payment);