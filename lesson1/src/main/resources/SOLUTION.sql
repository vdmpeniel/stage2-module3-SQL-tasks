CREATE TABLE student(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    birthday DATE NOT NULL,
    groupnumber INT NOT NULL
);

CREATE TABLE subject(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    grade INT NOT NULL
);

CREATE TABLE paymentType(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE payment(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type_id BIGINT,
    amount DECIMAL,
    student_id BIGINT NOT NULL,
    payment_date TIMESTAMP
);
ALTER TABLE payment ADD CONSTRAINT fk_payment_type FOREIGN KEY (type_id) REFERENCES paymentType(id);
ALTER TABLE payment ADD CONSTRAINT fk_payment_student FOREIGN KEY (student_id) REFERENCES student(id);

CREATE TABLE Mark(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_id BIGINT,
    subject_id BIGINT,
    mark INT NOT NULL
);
ALTER TABLE mark ADD CONSTRAINT fk_mark_student FOREIGN KEY (student_id) REFERENCES student(id);
ALTER TABLE mark ADD CONSTRAINT fk_mark_subject FOREIGN KEY (subject_id) REFERENCES subject(id);


