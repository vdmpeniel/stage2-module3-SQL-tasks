--## Lesson 11 task:

-- 1) Update table Subject. Update grade 5 for subject name ‘End of Suburbia: Oil Depletion and the Collapse of the American Dream’
UPDATE Subject SET grade = 5 WHERE name = 'End of Suburbia: Oil Depletion and the Collapse of the American Dream';

-- 2) Update table Student. Update groupNumber 8 for student ‘Tremaine Worvill’
UPDATE Student SET groupnumber = 8 WHERE name = 'Tremaine Worvill';

-- 3) Update table Payment. Update Amount to 500 and student_id to 2 in case payment_date > 2021-01-01 and type 2
UPDATE Payment SET amount = 500, student_id = 2 WHERE payment_date > DATE '2021-01-01' AND type_id = 2;

-- 4) Update table Mark. Update Mark = 2 for subject_id 315
UPDATE Mark SET mark = 2 WHERE subject_id = 315;