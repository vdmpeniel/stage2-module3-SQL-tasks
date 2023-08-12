SELECT s.* FROM Subject AS s INNER JOIN Mark AS m ON m.subject_id = s.id GROUP BY s.id HAVING AVG(m.mark) > ( SELECT AVG(mark) FROM Mark);

SELECT DISTINCT s.* FROM Student AS s INNER JOIN Payment AS p ON s.id = p.student_id WHERE p.amount > (SELECT AVG(amount) FROM Payment);