
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
    description VARCHAR NOT NULL,
    grade INT NOT NULL,
    PRIMARY KEY( id )
);

CREATE TABLE PaymentType(
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR NOT NULL,
    PRIMARY KEY( id )
);

CREATE TABLE Payment(
    id BIGINT NOT NULL AUTO_INCREMENT,
    type_id BIGINT NOT NULL,
    amount DECIMAL NOT NULL,
    student_id BIGINT NOT NULL,
    payment_date TIMESTAMP NOT NULL,
    PRIMARY KEY( id )
);
ALTER TABLE Payment ADD CONSTRAINT PaymentStudentFk FOREIGN KEY (student_id) REFERENCES Student(id);
ALTER TABLE Payment ADD CONSTRAINT PaymentPaymentTypeFk FOREIGN KEY (type_id) REFERENCES PaymentType(id);

CREATE TABLE Mark(
    id BIGINT NOT NULL AUTO_INCREMENT,
    student_id BIGINT NOT NULL,
    subject_id BIGINT NOT NULL,
    mark INT NOT NULL,
    PRIMARY KEY( id )
);
ALTER TABLE Mark ADD CONSTRAINT MarkStudentFk FOREIGN KEY (student_id) REFERENCES Student(id);
ALTER TABLE Mark ADD CONSTRAINT MarkSubjectFk FOREIGN KEY (subject_id) REFERENCES Subject(id);