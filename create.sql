DROP SCHEMA lab1 CASCADE;
CREATE SCHEMA lab1;

CREATE TABLE STORES(
   store_id INT PRIMARY KEY,
   address	TEXT,
   manager	TEXT
);



CREATE TABLE Customers(
   customer_id INT PRIMARY KEY,
   name		TEXT,
   address	TEXT,
   email        TEXT
);




CREATE TABLE Products(
   product_id INT PRIMARY KEY,
   name		TEXT,
   category	TEXT,
   manufacturer	TEXT
);



CREATE TABLE Sales(
   store_id		INT NOT NULL,	
   customer_id		INT NOT NULL,
   product_id		INT NOT NULL,
   date_p		TEXT NOT NULL,
   quantity		INT,
   price		INT,
   shipped		BOOLEAN,
   PRIMARY KEY(store_id, customer_id, product_id, date_p)
);
