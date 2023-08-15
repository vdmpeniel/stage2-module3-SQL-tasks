ALTER TABLE mark DROP CONSTRAINT fk_mark_student;
ALTER TABLE mark ADD CONSTRAINT fk_mark_student FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE CASCADE;

ALTER TABLE mark DROP CONSTRAINT fk_mark_subject;
ALTER TABLE mark ADD CONSTRAINT fk_mark_subject FOREIGN KEY (student_id) REFERENCES subject(id) ON DELETE CASCADE;

ALTER TABLE payment DROP CONSTRAINT fk_payment_type;
ALTER TABLE payment ADD CONSTRAINT fk_payment_type FOREIGN KEY (type_id) REFERENCES paymentType(id) ON DELETE CASCADE;

ALTER TABLE payment DROP CONSTRAINT fk_payment_student;
ALTER TABLE payment ADD CONSTRAINT fk_payment_student FOREIGN KEY (student_id) REFERENCES ptudent(id) ON DELETE CASCADE;
