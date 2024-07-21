CREATE DATABASE AMAZON2;
SHOW DATABASES;
USE AMAZON2;
 
-- what table shall we create --
 
CREATE TABLE product_inventory (
Product_ID  int not null,
Product_Name varchar(100) not null,
Product_Price decimal (8,2) not null,
Product_Type varchar(100),
Quantity_Available int not null,
Prime_Eligibility enum('yes','no') not null,
-- Prime_Eligibility bool default false not null, --
primary key (Product_ID)
);

INSERT INTO product_inventory (Product_ID, Product_Name, Product_Price, Product_Type, Quantity_Available, Prime_Eligibility)
VALUES
(01, "Lights", 30.00, "Electronics", 100, "yes"),
(02, "SONY WF-C500",2000.00, "BLUETOOTH EARBUDS",20,"Yes"),
(03, "LAWNMOWER", 100.50, "GARDENING", 30, "yes");

SELECT * FROM product_inventory;

UPDATE product_inventory
SET Product_Price = '150.00'
WHERE Product_ID = '3';

SELECT * FROM product_inventory;


-- updating information in the records--

ALTER TABLE product_inventory 
ADD COLUMN Wishlist_Count int default 0,
ADD COLUMN Date_Added date not null;

-- updating information in the records--

ALTER TABLE product_inventory
DROP COLUMN Date_Added;

-- updating information in the records--

ALTER TABLE product_inventory
MODIFY COLUMN Product_Type varchar(110) not null;


-- show your table --
EXPLAIN product_inventory;