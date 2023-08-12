SELECT s.* FROM Subject AS s INNER JOIN Mark AS m ON m.subject_id = s.id GROUP BY s.id HAVING AVG(m.mark) > ( SELECT AVG(mark) FROM Mark);

SELECT s.* FROM Student AS s INNER JOIN Payment AS p ON s.id = p.student_id GROUP BY s.id HAVING SUM(p.amount) < (SELECT AVG(amount) FROM Payment);