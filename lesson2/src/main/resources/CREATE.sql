
CREATE TABLE student
(
    id BIGINT UNIQUE AUTO_INCREMENT NOT NULL,
    name VARCHAR(255),
    birthday DATE,
    groupnumber INT,
    PRIMARY KEY(id)
);
CREATE TABLE subject
(
    id BIGINT UNIQUE AUTO_INCREMENT NOT NULL,
    name VARCHAR(255),
    description VARCHAR(255),
    grade INT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE mark
(
    id BIGINT UNIQUE AUTO_INCREMENT NOT NULL,
    student_id BIGINT,
    subject_id BIGINT,
    mark INT,
    PRIMARY KEY(id)
);
ALTER TABLE mark ADD CONSTRAINT fk_mark_student FOREIGN KEY (student_id) REFERENCES student(id);
ALTER TABLE mark ADD CONSTRAINT fk_mark_subject FOREIGN KEY (subject_id) REFERENCES subject(id);




CREATE TABLE paymenttype
(
    id BIGINT UNIQUE AUTO_INCREMENT NOT NULL,
    name VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE payment
(
    id BIGINT UNIQUE AUTO_INCREMENT NOT NULL,
    type_id BIGINT,
    amount DECIMAL,
    payment_date DATETIME,
    student_id BIGINT,
    PRIMARY KEY(id)
);
ALTER TABLE Payment ADD CONSTRAINT fk_payment_type FOREIGN KEY (type_id) REFERENCES paymentType(id);
ALTER TABLE Payment ADD CONSTRAINT fk_payment_student FOREIGN KEY (student_id) REFERENCES student(id);

