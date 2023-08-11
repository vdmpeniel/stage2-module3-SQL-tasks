-- Lesson 3 tasks:

-- 1) Change table ‘Student’.
   ALTER TABLE Student
   ALTER COLUMN birthday SET NOT NULL;

-- 2) Change table ‘Mark’
   ALTER TABLE Mark
   ADD CONSTRAINT mark_range CHECK (mark >= 1 AND mark <= 10);

   ALTER TABLE Mark
   ALTER COLUMN student_id SET NOT NULL;

   ALTER TABLE Mark
   ALTER COLUMN subject_id SET NOT NULL;

-- 3) Change table ‘Subject’
   ALTER TABLE Subject
   ADD CONSTRAINT grade_rate CHECK (grade >= 1 AND grade <= 5);

-- 4) Change table ‘PaymentType’
   ALTER TABLE PaymentType
   ADD CONSTRAINT unique_name UNIQUE(name);

-- 5) Change table ‘Payment’
   ALTER TABLE Payment
   ALTER COLUMN type_id SET NOT NULL;

   ALTER TABLE Payment
   ALTER COLUMN amount SET NOT NULL;

   ALTER TABLE Payment
   ALTER COLUMN payment_date SET NOT NULL;


--   SELECT *
--   FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
--   WHERE TABLE_NAME = 'Subject';
--   DESCRIBE Student;
