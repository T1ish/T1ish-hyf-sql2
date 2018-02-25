/*
Create a new database containing the following tables:
Class with the columns: id, name, begins (date), ends (data)
Student with the columns: id, name, email, phone, class_id (foreign key)
Create an index on the name column of the student table.
Add a new column to the class table named status which can only have the following values. not-started, ongoing, finished (hint: enumerations).
*/

DROP DATABASE IF EXISTS schooldb;

CREATE DATABASE schooldb;

USE schooldb;

DROP TABLE IF EXISTS class;
DROP TABLE IF EXISTS student;

CREATE TABLE class(
id INT(3) UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
name VARCHAR(75) NOT NULL,
begins DATE,
ends DATE
);

CREATE TABLE student(
id INT(3) UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
name VARCHAR(75) NOT NULL,
email VARCHAR(255),
phone CHAR(8) NOT NULL,
class_id INT(3) UNSIGNED,
CONSTRAINT fk_class FOREIGN KEY (class_id) REFERENCES class (id) ON DELETE CASCADE ON UPDATE NO ACTION
);

CREATE INDEX idx_student_name ON student (name);
DESCRIBE student;

ALTER TABLE class ADD `status` ENUM('Low', 'Medium', 'High') NOT NULL;
DESCRIBE class;