--## Lesson 12 task:

-- Temporarily disable foreign key constraints
SET REFERENTIAL_INTEGRITY FALSE;

-- 1) Delete all students with grade more or equals than 4 and all relationships with this student;
DELETE FROM Student WHERE id IN ( SELECT student_id FROM mark WHERE mark >= 4 );
DELETE FROM Payment WHERE student_id IN ( SELECT student_id FROM mark WHERE mark >= 4 );
DELETE FROM Mark WHERE mark >= 4;

-- 2) Delete students who have at least one mark less than 4;
DELETE FROM Student WHERE id IN ( SELECT student_id FROM mark WHERE mark < 4 );

-- 3) Delete “Daily” payment type and all relationships with this type.
DELETE FROM Payment WHERE type_id = ( SELECT id FROM PaymentType WHERE name = 'DAILY' );
DELETE FROM PaymentType WHERE name = 'DAILY';

-- 4) Delete All marks less than 7
DELETE FROM Mark WHERE mark < 7;

-- Enable foreign key constraints
SET REFERENTIAL_INTEGRITY TRUE;