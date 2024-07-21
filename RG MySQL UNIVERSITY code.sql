-- create database --

CREATE DATABASE university;

-- show the database exists --

SHOW DATABASES;

-- use the database to make sure the correct database is in use--

USE university;

-- create a table containing; Student ID, First Name, Last Name, Date of Birth, where the primary key is Student ID --

CREATE TABLE students (
student_id INT NOT NULL AUTO_INCREMENT,
fname VARCHAR (30) NOT NULL,
lname VARCHAR (30) NOT NULL,
dob DATE NOT NULL,
PRIMARY kEY (student_id)
);

-- show the structure of the table 'students' --

EXPLAIN students;

-- Create a second table called classes, it should contain class ID and class name --

CREATE TABLE classes(
class_id INT NOT NULL AUTO_INCREMENT,
room INT NOT NULL,
name VARCHAR(20) NOT NULL,
PRIMARY KEY (class_id)
);

-- show the structure of the table 'classes'--

EXPLAIN classes;

-- Create table enrolment, it should contain student_id ans class_id from previous two tables, use foreign key --

CREATE TABLE enrolment (
student_id INT,
class_id INT,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (class_id) REFERENCES classes(class_id)
);

-- show the structure of the table 'enrolment'--

EXPLAIN enrolment;

 -- Insert values in to the table 'students'--
 
INSERT INTO students ( fname , lname, dob)
VALUES
('Bradd', 'Pitt', '1988-10-11'),
('George', 'Clooney', '1987-10-11'), 
('Beyonce', 'Britney', '1980-09-08'),
('Jeff', 'Bezos', '1970-09-08'),
('Mark', 'Zukkerberg', '1988-10-11'),
('Bill', 'Ackman', '1960-09-08'),
('David', 'Beckham', '1965-09-18'),
('David', 'Gandy', '1990-03-08');

-- show the table 'students' with its contents --

SELECT * FROM students;

 -- Insert values in to the table 'classes'--

INSERT INTO classes (room, name)
VALUES
(1, 'mathematics'),
(2,'physics'),
(3, 'electronics'),
(4, 'computer_science');

-- show the table 'classes' with its contents --


SELECT*FROM classes;

 -- Insert values in to the table 'enrolment'--

INSERT INTO enrolment
VALUES
(1,1),
(1,2),
(1,3),
(1,4),
(2,2),
(2,4),
(3,1),
(3,2),
(4,1),
(4,2),
(4,3),
(5,2),
(6,1),
(6,2),
(6,3),
(6,4),
(7,2),
(7,3),
(8,1),
(8,2);

-- show the table 'enrolment' with its contents --

SELECT * FROM enrolment;

-- select students whose first name begins with B -- 

SELECT * FROM students WHERE fname like "b%";

-- JOINS ----
-- join tables students and classes together--

SELECT s.student_id, s.fname, class_id FROM enrolment
JOIN students s  ON s.student_id=enrolment.student_id;



SELECT s.student_id, s.fname, c.class_id, c.name FROM enrolment
JOIN students s ON s.student_id=enrolment.student_id
JOIN classes c ON c.class_id= enrolment.class_id;

SELECT s.student_id, s.fname, c.class_id, c.name FROM enrolment
JOIN students s ON s.student_id=enrolment.student_id
JOIN classes c ON c.class_id= enrolment.class_id
ORDER BY s.student_id;

SELECT s.student_id, s.fname, c.class_id, c.name FROM enrolment
JOIN students s ON s.student_id=enrolment.student_id
JOIN classes c ON c.class_id= enrolment.class_id
ORDER BY s.student_id DESC;


SELECT s.student_id, s.fname, c.class_id, c.name FROM enrolment
JOIN students s ON s.student_id=enrolment.student_id
JOIN classes c ON c.class_id= enrolment.class_id
ORDER BY s.student_id, c.class_id;

SELECT s.student_id, s.fname, c.class_id, c.name FROM enrolment
JOIN students s ON s.student_id=enrolment.student_id
JOIN classes c ON c.class_id= enrolment.class_id
ORDER BY s.student_id DESC, c.class_id ASC;

SELECT s.student_id, s.fname, c.class_id, c.name FROM enrolment
JOIN students s ON s.student_id=enrolment.student_id
JOIN classes c ON c.class_id= enrolment.class_id
ORDER BY s.student_id ASC, c.class_id ASC;


