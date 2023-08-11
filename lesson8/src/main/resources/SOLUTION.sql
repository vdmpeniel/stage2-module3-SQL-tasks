-- ## Lesson 8 tasks:

-- 1) Select the youngest student's birthday;
SELECT MIN(DATEDIFF('YEAR', birthday, CURRENT_DATE)) FROM Student;

-- 2) Find the earliest made payment's date;
SELECT MIN(payment_date) FROM Payment;

-- 3) Find average mark by Math;
SELECT AVG(mark) FROM Mark AS m JOIN Subject AS s ON m.subject_id = s.id WHERE s.name = 'Math';

-- 4) Find min amount of payment for payment type “WEEKLY”.
SELECT MIN(amount) FROM Payment AS p JOIN PaymentType AS pt ON p.type_id = pt.id WHERE pt.name = 'WEEKLY';