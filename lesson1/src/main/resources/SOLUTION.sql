CREATE TABLE Student(
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR NOT NULL,
    birthday DATE NOT NULL,
    groupnumber INT NOT NULL,
    PRIMARY KEY( id )
);

CREATE TABLE Subject(
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR NOT NULL,
    description VARCHAR,
    grade INT,
    PRIMARY KEY( id )
);

CREATE TABLE PaymentType(
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR,
    PRIMARY KEY ( id )
);

CREATE TABLE Payment(
    id BIGINT NOT NULL AUTO_INCREMENT,
    type_id BIGINT,
    amount DECIMAL,
    student_id BIGINT NOT NULL,
    payment_date TIMESTAMP,
    PRIMARY KEY ( id )
);
ALTER TABLE Payment ADD CONSTRAINT fk_payment_type FOREIGN KEY (type_id) REFERENCES PaymentType(id);
ALTER TABLE Payment ADD CONSTRAINT fk_payment_student FOREIGN KEY (student_id) REFERENCES Student(id);

CREATE TABLE Mark(
    id BIGINT NOT NULL AUTO_INCREMENT,
    student_id BIGINT,
    subject_id BIGINT,
    mark INT NOT NULL,
    PRIMARY KEY ( id )
);
ALTER TABLE Mark ADD CONSTRAINT fk_mark_student FOREIGN KEY (student_id) REFERENCES Student(id);
ALTER TABLE Mark ADD CONSTRAINT fk_mark_subject FOREIGN KEY (subject_id) REFERENCES Subject(id);


