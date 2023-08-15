
CREATE TABLE student
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    birthday DATE NOT NULL,
    groupnumber INT NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE subject
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    description VARCHAR(255),
    grade INT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE mark
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    student_id BIGINT,
    subject_id BIGINT,
    mark INT NOT NULL,
    PRIMARY KEY(id)

    --foreign key (student_id) references student(id),
    --foreign key (subject_id) references subject(id)
);
ALTER TABLE mark ADD CONSTRAINT fk_mark_student FOREIGN KEY (student_id) REFERENCES student(id);
ALTER TABLE mark ADD CONSTRAINT fk_mark_subject FOREIGN KEY (subject_id) REFERENCES subject(id);




CREATE TABLE paymenttype
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE payment
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    type_id BIGINT NOT NULL,
    amount DECIMAL NOT NULL,
    payment_date TIMESTAMP  NOT NULL,
    student_id BIGINT NOT NULL,
    PRIMARY KEY(id)

    --foreign key (type_id) references paymenttype(id),
    --foreign key (student_id) references student(id)
);

ALTER TABLE Payment ADD CONSTRAINT fk_payment_type FOREIGN KEY (type_id) REFERENCES paymentType(id);
ALTER TABLE Payment ADD CONSTRAINT fk_payment_student FOREIGN KEY (student_id) REFERENCES student(id);

