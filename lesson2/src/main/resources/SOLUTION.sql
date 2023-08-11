-- Lesson 2
-- 1) Adding new students:
-- First grade
INSERT INTO Student(
    name,
    birthday,
    groupnumber
)
VALUES
    ('John', '2018-02-21', 1),
    ('Chris', '2018-02-21', 1),
    ('Carl', '2018-02-21', 1);


-- Second grade
INSERT INTO Student(
    name,
    birthday,
    groupnumber
)
VALUES
    ('Oliver', '2018-02-21', 2),
    ('James', '2018-02-21', 2),
    ('Lucas', '2018-02-21', 2),
    ('Henry', '2018-02-21', 2);


-- Third grade
INSERT INTO Student(
    name,
    birthday,
    groupnumber
)
VALUES
    ('Jacob', '2018-02-21', 3),
    ('Logan', '2018-02-21', 3);


-- Other grades
INSERT INTO Student(
    name,
    birthday,
    groupnumber
)
VALUES
    ('William', '2018-02-21', 4),
    ('Julia', '2018-02-21', 4),
    ('Anselm', '2018-02-21', 5);
-- SELECT * FROM Student;


-- 2) Adding new Subjects:
INSERT INTO Subject(
    name,
    description,
    grade
)
VALUES
('Art', '', 1),
('Music', '', 1),

('Geography', '', 2),
('History', '', 2),

('PE', '', 3),
('Math', '', 3),

('Science', '', 4),
('IT', '', 4),

('Computer Science', '', 5),
('Nuclear Physics', '', 5);
-- SELECT * FROM Subject;


-- 3) Insert “DAILY”, “WEEKLY”, ”MONTHLY” Payment Types.
INSERT INTO PaymentType(name)
VALUES
('DAILY'),
('WEEKLY'),
('MONTHLY');


-- 4) Insert 4 Payments:
INSERT INTO Payment (
    type_id,
    amount,
    student_id,
    payment_date
)
VALUES
    ((SELECT id FROM PaymentType WHERE name = 'WEEKLY'), 25, (SELECT id FROM Student WHERE name = 'John'), CURDATE()),
    ((SELECT id FROM PaymentType WHERE name = 'MONTHLY'), 250, (SELECT id FROM Student WHERE name = 'Oliver'), CURDATE()),
    ((SELECT id FROM PaymentType WHERE name = 'WEEKLY'), 25, (SELECT id FROM Student WHERE name = 'Henry'), CURDATE()),
    ((SELECT id FROM PaymentType WHERE name = 'DAILY'), 5, (SELECT id FROM Student WHERE name = 'James'), CURDATE()),
    ((SELECT id FROM PaymentType WHERE name = 'WEEKLY'), 20, (SELECT id FROM Student WHERE name = 'Julia'), CURDATE()),
    ((SELECT id FROM PaymentType WHERE name = 'DAILY'), 45, (SELECT id FROM Student WHERE name = 'Anselm'), CURDATE()),
    ((SELECT id FROM PaymentType WHERE name = 'MONTHLY'), 120, (SELECT id FROM Student WHERE name = 'Jacob'), CURDATE()),
    ((SELECT id FROM PaymentType WHERE name = 'DAILY'), 15, (SELECT id FROM Student WHERE name = 'Logan'), CURDATE());
-- SELECT * FROM Payment;



-- 5) Insert 5 Marks:
INSERT INTO Mark(
    student_id,
    subject_id,
    mark
)
VALUES
((SELECT id FROM Student WHERE name = 'Chris'), (SELECT id FROM Subject WHERE name = 'Art'), 8),
((SELECT id FROM Student WHERE name = 'Oliver'), (SELECT id FROM Subject WHERE name = 'History'), 5),
((SELECT id FROM Student WHERE name = 'James'), (SELECT id FROM Subject WHERE name = 'Geography'), 9),
((SELECT id FROM Student WHERE name = 'Jacob'), (SELECT id FROM Subject WHERE name = 'Math'), 4),
((SELECT id FROM Student WHERE name = 'Logan'), (SELECT id FROM Subject WHERE name = 'PE'), 9),
((SELECT id FROM Student WHERE name = 'Lucas'), (SELECT id FROM Subject WHERE name = 'Math'), 10),
((SELECT id FROM Student WHERE name = 'Julia'), (SELECT id FROM Subject WHERE name = 'Art'), 7);
-- SELECT * FROM Mark;