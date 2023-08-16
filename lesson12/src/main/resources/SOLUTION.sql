DELETE FROM Student WHERE groupnumber >= 4;

DELETE FROM Student WHERE id IN ( SELECT DISTINCT student_id FROM mark WHERE mark < 4 );

SELECT DISTINCT id FROM PaymentType WHERE name = 'DAILY';

DELETE FROM Mark WHERE mark < 7;

