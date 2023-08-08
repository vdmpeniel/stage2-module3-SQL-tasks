CREATE TABLE Student
(
    id bigint NOT NULL UNIQUE AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    birthday date NOT NULL,
    group_number int NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Subject
(
    id bigint NOT NULL UNIQUE AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    description varchar(255),
    grade int,
    PRIMARY KEY (id)
);

CREATE TABLE PaymentType
(
    id bigint NOT NULL UNIQUE AUTO_INCREMENT,
    name varchar(255),
    PRIMARY KEY (id)
);

CREATE TABLE Payment
(
    id bigint NOT NULL UNIQUE AUTO_INCREMENT,
    type_id bigint NOT NULL,
    amount decimal NOT NUL,
    student_id bigint NOT NULL,
    payment_date datetime NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (student_id) REFERENCES Student (id),
    FOREIGN KEY (type_id) REFERENCES PaymentType (id)
);

CREATE TABLE Mark
(
    id bigint NOT NULL UNIQUE AUTO_INCREMENT,
    student_id bigint NOT NULL,
    subject_id bigint NOT NULL,
    mark int  NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (student_id) REFERENCES Student (id),
    FOREIGN KEY (subject_id) REFERENCES Subject (id)
);