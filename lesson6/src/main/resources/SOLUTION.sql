-- ## Lesson 6 tasks:

-- 1) Select Payments with “MONTHLY” type;
SELECT p.* FROM Payment AS p JOIN PaymentType AS pt ON pt.id = p.type_id WHERE pt.name = 'MONTHLY';

-- 2) Select all marks by Art
SELECT m.* FROM Mark AS m JOIN Subject AS s ON s.id = m.subject_id WHERE s.name = 'Art';

-- 3) Select all students who have “WEEKLY” payments;
SELECT st.* FROM Student as st JOIN Payment AS p ON p.student_id = st.id JOIN PaymentType AS pt ON pt.id = p.type_id WHERE pt.name = 'WEEKLY';

-- 4) Select all students who has marks by Math.
SELECT st.* FROM Student as st JOIN Mark AS m ON st.id = m.student_id JOIN Subject AS sb ON sb.id = m.subject_id WHERE sb.name = 'Math';

