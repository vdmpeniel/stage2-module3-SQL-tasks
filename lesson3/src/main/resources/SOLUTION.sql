-- Lesson 3 tasks:

-- 1) Change table ‘Student’.
   ALTER TABLE Student
   MODIFY birthday date NOT NULL;

-- 2) Change table ‘Mark’
   ALTER TABLE Mark
   ADD CONSTRAINT mark_range CHECK (mark >= 1 AND mark <= 10),
   MODIFY student_id bigint NOT NULL,
   MODIFY subject_id bigint NOT NULL;

-- 3) Change table ‘Subject’
   ALTER TABLE Subject
   ADD CONSTRAINT grade_rate CHECK (grade >= 1 AND grade <= 5);

-- 4) Change table ‘PaymentType’
   ALTER TABLE PaymentType
   MODIFY name varchar(255) UNIQUE;

-- 5) Change table ‘Payment’
   ALTER TABLE Payment
   MODIFY type_id bigint NOT NULL,
   MODIFY amount decimal NOT NULL,
   MODIFY payment_date date NOT NULL;


--   SELECT *
--   FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
--   WHERE TABLE_NAME = 'Subject';
--   DESCRIBE Student;
