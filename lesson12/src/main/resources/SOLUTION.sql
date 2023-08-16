DELETE FROM Student WHERE id IN (SELECT DISTINCT student_id FROM Mark AS m JOIN subject AS s ON s.id = m.subject_id WHERE grade >= 4);

DELETE FROM Student WHERE id IN ( SELECT DISTINCT student_id FROM mark WHERE mark < 4 );

DELETE FROM PaymentType WHERE name = 'DAILY';

DELETE FROM Mark WHERE mark < 7;

