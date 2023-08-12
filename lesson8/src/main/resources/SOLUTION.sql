SELECT MIN(DATEDIFF('YEAR', birthday, CURRENT_DATE)) FROM Student;

SELECT MIN(payment_date) FROM Payment;

SELECT AVG(mark) FROM Mark AS m JOIN Subject AS s ON m.subject_id = s.id WHERE s.name = 'Math';

SELECT MIN(amount) FROM Payment AS p JOIN PaymentType AS pt ON p.type_id = pt.id WHERE pt.name = 'WEEKLY';