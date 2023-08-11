-- Lesson 2
-- 1) Adding new students:
-- First grade
INSERT INTO Student( name, birthday, groupnumber) VALUES('John', '2018-02-21', 1);
INSERT INTO Student( name, birthday, groupnumber) VALUES('Chris', '2018-02-21', 1);
INSERT INTO Student( name, birthday, groupnumber) VALUES('Carl', '2018-02-21', 1);


-- Second grade
INSERT INTO Student(name, birthday, groupnumber) VALUES('Oliver', '2018-02-21', 2);
INSERT INTO Student(name, birthday, groupnumber) VALUES('James', '2018-02-21', 2);
INSERT INTO Student(name, birthday, groupnumber) VALUES('Lucas', '2018-02-21', 2);
INSERT INTO Student(name, birthday, groupnumber) VALUES('Henry', '2018-02-21', 2);


-- Third grade
INSERT INTO Student(name, birthday, groupnumber) VALUES('Jacob', '2018-02-21', 3);
INSERT INTO Student(name, birthday, groupnumber) VALUES('Logan', '2018-02-21', 3);


-- Other grades
INSERT INTO Student(name, birthday, groupnumber) VALUES('William', '2018-02-21', 4);
INSERT INTO Student(name, birthday, groupnumber) VALUES('Julia', '2018-02-21', 4);
INSERT INTO Student(name, birthday, groupnumber) VALUES('Anselm', '2018-02-21', 5);
-- SELECT * FROM Student;


-- 2) Adding new Subjects:
INSERT INTO Subject(name, description, grade) VALUES('Art', '', 1);
INSERT INTO Subject(name, description, grade) VALUES('Music', '', 1);

INSERT INTO Subject(name, description, grade) VALUES('Geography', '', 2);
INSERT INTO Subject(name, description, grade) VALUES('History', '', 2);

INSERT INTO Subject(name, description, grade) VALUES('PE', '', 3);
INSERT INTO Subject(name, description, grade) VALUES('Math', '', 3);

INSERT INTO Subject(name, description, grade) VALUES('Science', '', 4);
INSERT INTO Subject(name, description, grade) VALUES('IT', '', 4);

INSERT INTO Subject(name, description, grade) VALUES('Computer Science', '', 5);
INSERT INTO Subject(name, description, grade) VALUES('Nuclear Physics', '', 5);
-- SELECT * FROM Subject;


-- 3) Insert “DAILY”, “WEEKLY”, ”MONTHLY” Payment Types.
INSERT INTO PaymentType(name) VALUES('DAILY');
INSERT INTO PaymentType(name) VALUES('WEEKLY');
INSERT INTO PaymentType(name) VALUES('MONTHLY');


-- 4) Insert 4 Payments:
INSERT INTO Payment (type_id, amount, student_id, payment_date) VALUES((SELECT id FROM PaymentType WHERE name = 'WEEKLY'), 25, (SELECT id FROM Student WHERE name = 'John'), CURDATE());
INSERT INTO Payment (type_id, amount, student_id, payment_date) VALUES((SELECT id FROM PaymentType WHERE name = 'MONTHLY'), 250, (SELECT id FROM Student WHERE name = 'Oliver'), CURDATE());
INSERT INTO Payment (type_id, amount, student_id, payment_date) VALUES((SELECT id FROM PaymentType WHERE name = 'WEEKLY'), 25, (SELECT id FROM Student WHERE name = 'Henry'), CURDATE());
INSERT INTO Payment (type_id, amount, student_id, payment_date) VALUES((SELECT id FROM PaymentType WHERE name = 'DAILY'), 5, (SELECT id FROM Student WHERE name = 'James'), CURDATE());
INSERT INTO Payment (type_id, amount, student_id, payment_date) VALUES((SELECT id FROM PaymentType WHERE name = 'WEEKLY'), 20, (SELECT id FROM Student WHERE name = 'Julia'), CURDATE());
INSERT INTO Payment (type_id, amount, student_id, payment_date) VALUES((SELECT id FROM PaymentType WHERE name = 'DAILY'), 45, (SELECT id FROM Student WHERE name = 'Anselm'), CURDATE());
INSERT INTO Payment (type_id, amount, student_id, payment_date) VALUES((SELECT id FROM PaymentType WHERE name = 'MONTHLY'), 120, (SELECT id FROM Student WHERE name = 'Jacob'), CURDATE());
INSERT INTO Payment (type_id, amount, student_id, payment_date) VALUES((SELECT id FROM PaymentType WHERE name = 'DAILY'), 15, (SELECT id FROM Student WHERE name = 'Logan'), CURDATE());
-- SELECT * FROM Payment;



-- 5) Insert 5 Marks:
INSERT INTO Mark(student_id, subject_id, mark) VALUES((SELECT id FROM Student WHERE name = 'Chris'), (SELECT id FROM Subject WHERE name = 'Art'), 8);
INSERT INTO Mark(student_id, subject_id, mark) VALUES((SELECT id FROM Student WHERE name = 'Oliver'), (SELECT id FROM Subject WHERE name = 'History'), 5);
INSERT INTO Mark(student_id, subject_id, mark) VALUES((SELECT id FROM Student WHERE name = 'James'), (SELECT id FROM Subject WHERE name = 'Geography'), 9);
INSERT INTO Mark(student_id, subject_id, mark) VALUES((SELECT id FROM Student WHERE name = 'Jacob'), (SELECT id FROM Subject WHERE name = 'Math'), 4);
INSERT INTO Mark(student_id, subject_id, mark) VALUES((SELECT id FROM Student WHERE name = 'Logan'), (SELECT id FROM Subject WHERE name = 'PE'), 9);
INSERT INTO Mark(student_id, subject_id, mark) VALUES((SELECT id FROM Student WHERE name = 'Lucas'), (SELECT id FROM Subject WHERE name = 'Math'), 10);
INSERT INTO Mark(student_id, subject_id, mark) VALUES((SELECT id FROM Student WHERE name = 'Julia'), (SELECT id FROM Subject WHERE name = 'Art'), 7);
-- SELECT * FROM Mark;