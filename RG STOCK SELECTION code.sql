-- create database--

CREATE DATABASE public_company_stocks;
SHOW DATABASES;

USE public_company_stocks;

-- create a table for the stock--

CREATE TABLE table_of_stocks (
Company_Ticker_Symbol VARCHAR (20) NOT NULL,
Company_Name VARCHAR (250) NOT NULL,
Stock_Exchange VARCHAR (30) NOT NULL,
Growth_in_Q1_2024 ENUM('YES','NO') NOT NULL, 

PRIMARY KEY(Company_Ticker_Symbol)
);

EXPLAIN table_of_stocks;

-- Add Data to the Table--

INSERT INTO table_of_stocks (Company_Ticker_Symbol, Company_Name, Stock_Exchange, Growth_in_Q1_2024)
VALUES 
('AAPL', 'Apple Inc', 'NASDAQ', 'YES'),
('MSFT', 'Microsoft Corporation', 'NASDAQ', 'YES'),
('AMZN', 'Amazon Inc', 'NASDAQ', 'YES'),
('GOOGL', 'Alphabet Inc', 'NASDAQ', 'YES'),
('TSLA', 'Tesla Inc', 'NASDAQ', 'Yes'),
('JPM', 'JPMorganChase', 'NYSE', 'YES'),
('V', 'Visa Inc', 'NYSE', 'YES'),
('KO', 'The Coca Cola Company', 'NYSE', 'NO'),
('NFLX', 'Netflix Inc', 'NASDAQ', 'YES'),
('BA', 'The Boeing Company', 'NYSE', 'NO');

SELECT * FROM table_of_stocks;

-- updating information in the records, change Growth_in_Q1_2024 for TSLA --

UPDATE table_of_stocks
SET Growth_in_Q1_2024 = 'NO'
WHERE Company_Ticker_Symbol = 'TSLA';

SELECT * FROM table_of_stocks;

-- updating information in the records, remove column company name--

ALTER TABLE table_of_stocks
DROP COLUMN Company_Name;

SELECT * FROM table_of_stocks;

-- Add Column  with Data--

ALTER TABLE table_of_stocks
ADD COLUMN Company_Value decimal (7,2);

EXPLAIN table_of_stocks;

-- Add data in to the new column --

UPDATE table_of_stocks
SET Company_Value = '10.00'
WHERE Company_Ticker_Symbol = 'TSLA';

SELECT * FROM table_of_stocks;

UPDATE table_of_stocks
SET Company_Value = '5.00'
WHERE Company_Ticker_Symbol = 'AMZN';

UPDATE table_of_stocks
SET Company_Value = '50.00'
WHERE Company_Ticker_Symbol = 'BA';

UPDATE table_of_stocks
SET Company_Value = '9.00'
WHERE Company_Ticker_Symbol = 'GOOGL';

UPDATE table_of_stocks
SET Company_Value = '1.00'
WHERE Company_Ticker_Symbol = 'JPM';

UPDATE table_of_stocks
SET Company_Value = '5.00'
WHERE Company_Ticker_Symbol = 'KO';

UPDATE table_of_stocks
SET Company_Value = '7.00'
WHERE Company_Ticker_Symbol = 'MSFT';

UPDATE table_of_stocks
SET Company_Value = '10.00'
WHERE Company_Ticker_Symbol = 'NFLX';

UPDATE table_of_stocks
SET Company_Value = '8.00'
WHERE Company_Ticker_Symbol = 'V';

UPDATE table_of_stocks
SET Company_Value = '10.00'
WHERE Company_Ticker_Symbol = 'TSLA';

UPDATE table_of_stocks
SET Company_Value = '10.00'
WHERE Company_Ticker_Symbol = 'TSLA';

SELECT * FROM table_of_stocks;

-- Delete a row for ticker KO --


DELETE FROM table_of_stocks
WHERE Company_Ticker_Symbol = 'KO';
SELECT * FROM table_of_stocks;


-- find companies with the value over 7 and the ticker symbol --

SELECT Company_Ticker_Symbol, Company_Value
FROM table_of_stocks 
WHERE Company_Value  > 7;

-- select the companies on the NASDAQ market --

SELECT * 
FROM table_of_stocks 
WHERE Stock_Exchange = 'NASDAQ';




