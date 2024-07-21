CREATE DATABASE human_resources;
SHOW DATABASES;
USE human_resources;
CREATE TABLE Human_Resources_Table (
ID INT NOT NULL,
firstname VARCHAR (100) NOT NULL,
surname VARCHAR (100) NOT NULL,
gender VARCHAR (10) NOT NULL,
age INT NOT NULL,
salary DECIMAL (8,3) NOT NULL,
PRIMARY KEY (ID)
);

EXPLAIN Human_Resources_Table;

INSERT INTO  Human_Resources_Table (ID , firstname, surname, gender, age, salary)
VALUES
(1, 'Borris', 'Johnson', 'Male', 60, 30000.00),
(2, 'Britney', 'Spears', 'Female', 42, 30000.00),
(3, 'Serena', 'Williams', 'Female', 55, 20000.00),
(4, 'Will', 'Smith', 'Male', 56, 70000.00),
(5, 'Donald', 'Trump', 'Male', 79, 90000.00),
(6, 'Taylor', 'Swift', 'Female',34, 90000.00),
(7, 'William', 'Maher', 'Male', 67, 50000.00),
(8, 'Joe', 'Rogan', 'Male', 55, 50000.00),
(9, 'Jeff', 'Bezos', 'Male', 60, 99999.99),
(10, 'William', 'Windsor', 'Male', 40, 20000.00);

SELECT * FROM Human_Resources_Table;

SELECT firstname, surname, salary 
FROM  Human_Resources_Table
WHERE salary >60000.00;

SELECT *
FROM Human_Resources_Table
WHERE age >50 AND age< 70;

SELECT *
FROM Human_Resources_Table
WHERE gender = 'Male';

SELECT * FROM Human_Resources_Table
ORDER BY surname ASC;

SELECT *
FROM Human_Resources_Table
WHERE age >= 55;

SELECT *
FROM Human_Resources_Table
WHERE age ='55' OR AGE ='79';

SELECT SUM(salary)
From Human_Resources_Table;

SELECT min(salary)
From Human_Resources_Table;

SELECT max(salary)
From Human_Resources_Table;

SELECT count(salary)
From Human_Resources_Table;

SELECT count(salary)
From Human_Resources_Table
WHERE salary >= 50000.00;

SELECT count(salary)
From Human_Resources_Table
WHERE salary >= 90000.00;

SELECT avg(salary)
From Human_Resources_Table;



CREATE TABLE students (
student_id INT NOT NULL AUTO_INCREMENT,
fname VARCHAR (30) NOT NULL,
lname VARCHAR (30) NOT NULL,
dob DATE NOT NULL,
PRIMARY kEY (student_id)
);

SELECT *FROM students;

INSERT INTO students ( fname , lname, dob)
VALUES
('Bradd', 'Pitt', '1988-10-11'),
('George', 'Clooney', '1987-10-11'), 
('Beyonce', 'Britney', '1980-09-08');

SELECT * FROM students;



