SET REFERENTIAL_INTEGRITY FALSE;

DELETE FROM Student WHERE id IN ( SELECT DISTINCT student_id FROM mark WHERE mark >= 4 );
DELETE FROM Payment WHERE student_id IN ( SELECT DISTINCT student_id FROM mark WHERE mark >= 4 );
DELETE FROM Mark WHERE mark >= 4;

DELETE FROM Student WHERE id IN ( SELECT DISTINCT student_id FROM mark WHERE mark < 4 );
DELETE FROM Payment WHERE student_id IN ( SELECT DISTINCT student_id FROM mark WHERE mark < 4 );
DELETE FROM Mark WHERE mark < 4;

DELETE FROM Payment WHERE type_id IN ( SELECT DISTINCT id FROM PaymentType WHERE name = 'DAILY' );
DELETE FROM PaymentType WHERE name = 'DAILY';

DELETE FROM Mark WHERE mark < 7;

SET REFERENTIAL_INTEGRITY TRUE;