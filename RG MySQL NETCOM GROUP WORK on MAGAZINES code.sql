
-- Table 1 = 8 records (8th record as an update), Table 2 = 6 records (6th record to be deleted), Table 3 Relational table --

-- Customers & magazine subscriptions --
 
CREATE DATABASE Subscriptions1;

USE Subscriptions1;
 
-- Table 1 Customers --

CREATE TABLE customers (

customer_id INT NOT NULL AUTO_INCREMENT,

first_initial VARCHAR(1),

surname VARCHAR(30) NOT NULL,

full_address VARCHAR(100) NOT NULL,

PRIMARY KEY (customer_id)

);
 
EXPLAIN customers;
 
-- Table 2 magazines --

CREATE TABLE magazines (

magazine_code INT NOT NULL AUTO_INCREMENT,

magazine_title VARCHAR(40) NOT NULL,

price DECIMAL(4,2) NOT NULL,

PRIMARY KEY (magazine_code)

);
 
EXPLAIN magazines;
 
-- Relational table 3 --

CREATE TABLE orders (

customer_id INT,

magazine_code INT,

FOREIGN KEY (customer_id) REFERENCES customers(customer_id),

FOREIGN KEY (magazine_code) REFERENCES magazines(magazine_code)

);
 
EXPLAIN orders;

-- add records --

INSERT INTO customers (first_initial, surname, full_address)

VALUES

('R', 'Thompson', '142 Walaby Way, Sydney'),

('J', 'Agbo', '678 Neptune Street, Balamory'),

('M', 'Hannah', '200 Table Avenue, Wolverhampton'),

('R', 'Gaddu', '1 Hyde Park, London'),

('K', 'George', '14 Tree Place, Milky Way'),

('A', 'Osei', '5067 Montgomery Lane, Ghana'),

('P', 'Stewart', '76 Willcross Drive, New Zeland'),

('E', 'Paul', '30 Noob Road, Fortnite');
 
SELECT * FROM customers;
 
INSERT INTO customers (first_initial, surname, full_address)

VALUES

('H', 'Potter', '4 Privet Drive, Surrey');

SELECT * FROM customers;
 
INSERT INTO magazines (magazine_title, price)

VALUES

('ZOHHOO', 8.79),

('Magazines Monthly', 3.90),

('Forbes', 12.99),

('Planetary Local', 4.49),

('Chocolate Lovers', 7.89),

('Economist', 45.99);
 
SELECT * FROM magazines;
 
DELETE FROM magazines

WHERE magazine_title = 'Chocolate Lovers';

SELECT * FROM magazines;
 
INSERT INTO orders 

VALUES

(1, 6),

(1, 3),

(2, 4),

(3, 1),

(6, 3),

(7, 2),

(8, 2),

(4, 4),

(4, 6),

(5, 1);
 
SELECT * FROM orders;
-- Simple Queries --
 
SELECT * FROM orders
WHERE magazine_code = 4;
 
SELECT * FROM orders
WHERE customer_id < 4;
 
SELECT * FROM orders
WHERE customer_id >= 6;
 
-- We want magazines with codes 2 & 3 only --
SELECT * FROM orders
WHERE magazine_code = 2 OR magazine_code = 3;

