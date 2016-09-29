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
   store_id		INT, 
   customer_id		INT,
   product_id		INT,
   date			TEXT,
   quantity		INT,
   price		INT,
   shipped		BOOLEAN,
   PRIMARY KEY(store_id, customer_id, product_id, date)
);


/*INSERT INTO Sales VALUES (1231231, 45, 53, '1994-11-28', 10,11,TRUE);*/

