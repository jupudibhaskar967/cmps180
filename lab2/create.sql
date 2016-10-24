DROP SCHEMA lab2 CASCADE;
CREATE SCHEMA lab2;

CREATE TABLE Stores(
   store_id INTEGER PRIMARY KEY,
   name CHAR(20),
   address	VARCHAR(50) NOT NULL,
   manager	CHAR(20),
   UNIQUE (name,address)
);

CREATE TABLE Customers(
   customer_id INTEGER PRIMARY KEY,
   name		CHAR(20) NOT NULL,
   address	VARCHAR(50),
   email        CHAR(20) UNIQUE,
   UNIQUE (name,address)
);

CREATE TABLE Products(
   product_id INTEGER PRIMARY KEY,
   name		CHAR(20) NOT NULL,
   category	CHAR(20),
   manufacturer	CHAR(20) NOT NULL,
   UNIQUE (name,manufacturer),
   UNIQUE (category,name)
   
);

CREATE TABLE Sales(
   store_id		INTEGER, 
   customer_id		INTEGER,
   product_id		INTEGER,
   purchase_date	DATE,
   quantity		INTEGER NOT NULL,
   price		NUMERIC(6,2) NOT NULL,
   shipped		BOOLEAN,
   PRIMARY KEY(store_id, customer_id, product_id, purchase_date)
);
