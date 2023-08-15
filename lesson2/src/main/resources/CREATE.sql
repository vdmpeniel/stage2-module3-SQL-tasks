
CREATE TABLE student
(
    id BIGINT AUTO_INCREMENT NOT NULL,
    name VARCHAR NOT NULL,
    birthday DATE NOT NULL,
    groupnumber INT NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE subject
(
    id BIGINT AUTO_INCREMENT NOT NULL,
    name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    grade INT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE mark
(
    id BIGINT AUTO_INCREMENT NOT NULL,
    student_id BIGINT NOT NULL,
    subject_id BIGINT NOT NULL,
    mark INT NOT NULL,
    PRIMARY KEY(id)
);
ALTER TABLE mark ADD CONSTRAINT fk_mark_student FOREIGN KEY (student_id) REFERENCES student(id);
ALTER TABLE mark ADD CONSTRAINT fk_mark_subject FOREIGN KEY (subject_id) REFERENCES subject(id);




CREATE TABLE paymenttype
(
    id BIGINT AUTO_INCREMENT NOT NULL,
    name VARCHAR NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE payment
(
    id BIGINT AUTO_INCREMENT NOT NULL,
    type_id BIGINT NOT NULL,
    amount DECIMAL NOT NULL,
    payment_date DATETIME,
    student_id BIGINT NOT NULL,
    PRIMARY KEY(id)
);
ALTER TABLE Payment ADD CONSTRAINT fk_payment_type FOREIGN KEY (type_id) REFERENCES paymentType(id);
ALTER TABLE Payment ADD CONSTRAINT fk_payment_student FOREIGN KEY (student_id) REFERENCES student(id);

