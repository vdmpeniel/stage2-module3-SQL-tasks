
CREATE TABLE student
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(45),
    birthday DATE NOT NULL,
    groupnumber INT NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE subject
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250),
    description VARCHAR(255),
    grade int NOT NULL,
);

CREATE TABLE mark
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_id BIGINT,
    subject_id BIGINT,
    mark INT NOT NULLgit branch,
    --foreign key (student_id) references student(id),
    --foreign key (subject_id) references subject(id)
);
ALTER TABLE Mark ADD CONSTRAINT fk_mark_student FOREIGN KEY (student_id) REFERENCES Student(id);
ALTER TABLE Mark ADD CONSTRAINT fk_mark_subject FOREIGN KEY (subject_id) REFERENCES Subject(id);




CREATE TABLE paymenttype
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45)
);

CREATE TABLE payment
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type_id BIGINT NOT NULL,
    amount decimal NOT NULL,
    payment_date TIMESTAMP  NOT NULL,
    student_id BIGINT NOT NULL,
    --foreign key (type_id) references paymenttype(id),
    --foreign key (student_id) references student(id)
);

ALTER TABLE Payment ADD CONSTRAINT fk_payment_type FOREIGN KEY (type_id) REFERENCES PaymentType(id);
ALTER TABLE Payment ADD CONSTRAINT fk_payment_student FOREIGN KEY (student_id) REFERENCES Student(id);

