-- create database --

CREATE DATABASE travelling;

-- show the database exists --

SHOW DATABASES;

-- use the database to make sure the correct database is in use--

USE travelling;

-- create a table containing; Traveller ID, First Name, Last Name, Date of Birth, where the primary key is Traveller ID --

CREATE TABLE Travelling (
traveller_id INT NOT NULL AUTO_INCREMENT,
fname VARCHAR (30) NOT NULL,
lname VARCHAR (30) NOT NULL,
dob DATE NOT NULL,
PRIMARY kEY (traveller_id)
);

-- show the structure of the table 'Travelling' --

EXPLAIN Travelling;

-- Create the table 'countries' --

CREATE TABLE Countries(
country_id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(20) NOT NULL,
PRIMARY KEY (country_id)
);

-- show the structure of the table 'countries' --

EXPLAIN countries;

-- Create the table 'travel_history' --

CREATE TABLE travel_history (
traveller_id INT,
country_id INT,
FOREIGN KEY (traveller_id) REFERENCES Travelling(traveller_id),
FOREIGN KEY (country_id) REFERENCES Countries(country_id)
);

-- show the structure of the table 'travel_history' --

EXPLAIN travel_history;

-- insert values in to the table 'Travelling' --


INSERT INTO Travelling ( fname , lname, dob)
VALUES
('Bradd', 'Pitt', '1988-10-11'),
('George', 'Clooney', '1987-10-11'), 
('Beyonce', 'Britney', '1980-09-08'),
('Jeff', 'Bezos', '1970-09-08'),
('Mark', 'Zukkerberg', '1988-10-11'),
('Bill', 'Ackman', '1960-09-08'),
('David', 'Beckham', '1965-09-18'),
('David', 'Gandy', '1990-03-08');

-- show all the values in the table 'Travelling' --

SELECT * FROM Travelling ;

-- insert values in to the table 'Countries' --

INSERT INTO Countries (name)
VALUES
('Japan'),
('USA'),
('China'),
('Australia'),
('France'),
('Germany'),
('Spain');

-- show all the values in the table 'Countries' --

SELECT * FROM Countries ;

-- insert values in to the table 'travel_history' using the ID codes--

INSERT INTO travel_history
VALUES
(1,1),
(1,7),
(2,3),
(2,2),
(2,1),
(3,6),
(3,4),
(3,7),
(3,5),
(4,3),
(5,7),
(5,2),
(6,1),
(6,3),
(7,6),
(7,7),
(8,3);

SELECT * FROM travel_history;

-- select all holidays --

SELECT t.traveller_id, t.fname, t.lname, c.name, c.country_id
FROM travel_history AS TH
JOIN travelling AS t ON t.traveller_id = TH.traveller_id
JOIN countries AS c on c.country_id = TH.country_id;

-- select  travellers that visited japan--
SELECT t.traveller_id, t.fname, t.lname, c.name, c.country_id
FROM travel_history AS TH
JOIN travelling AS t ON t.traveller_id = TH.traveller_id
JOIN countries AS c on c.country_id = TH.country_id
WHERE c.name= 'Japan';

-- AND, OR, IN, NOT, LIKE, BETWEEN, =, <, >, <= less than or equal to, => greater than or equal to, <> not equal to --
--  SELECT column-name,  FROM table-name,  ORDER BY field-name ASC or DESC --
-- sum, min, max, avg -- 
