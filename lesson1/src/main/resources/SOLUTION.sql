CREATE TABLE student( id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255), birthday DATE NOT NULL, groupnumber INT NOT NULL);

CREATE TABLE subject( id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255), description VARCHAR(255), grade INT NOT NULL);

CREATE TABLE paymentType( id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255));

CREATE TABLE payment( id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, type_id BIGINT, amount DECIMAL, student_id BIGINT NOT NULL, payment_date TIMESTAMP, CONSTRAINT payment_type_id_fkey foreign key (type_id) references paymenttype(id), CONSTRAINT payment_student_id_fkey foreign key (student_id) references student(id));

CREATE TABLE Mark( id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY, student_id BIGINT, subject_id BIGINT, mark INT NOT NULL, CONSTRAINT mark_student_id_fkey foreign key (student_id) references student(id), CONSTRAINT mark_subject_id_fkey foreign key (subject_id) references subject(id));



