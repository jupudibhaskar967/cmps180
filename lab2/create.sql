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

/*INSERT INTO Stores VALUES (10, 'Bananas', 'x', 'Shel Finkelstein');
INSERT INTO Stores VALUES (20, 'apples', 'y', 'Shel Finkelstein');
INSERT INTO Stores VALUES (30, 'oranges', 'z', 'Bhaskar');
INSERT INTO Stores VALUES (40, 'papaya', 'q', 'Shel Finkelstein');

INSERT INTO Customers VALUES (50, 'Shel Finkelstein', 'SantaCruz', 'njupudi@ucsc.edu');
INSERT INTO Customers VALUES (60, 'Shel Finkelstein1', 'SantaCruz1', 'njupudi@ucb.edu');
INSERT INTO Customers VALUES (70, 'Bhaskar', 'SantaCruz2', NULL);
INSERT INTO Customers VALUES (80, 'Shel Finkelstein2', 'SantaCruz3', 'x@gmail.com');*/


--select name from Stores WHERE manager='Shel Finkelstein';
--select name,address from Customers WHERE email IS NULL;
--select Customers.name,Stores.store_id,Customers.address from stores INNER JOIN customers ON customers.name = stores.manager;
--select DISTINCT ON (Products.name) Products.product_id,Products.name from Products INNER JOIN sales ON Sales.product_id = Products.product_id AND Sales.purchase_date = '2016-07-04';
--SELECT sales.customer_id,sales.purchase_date FROM sales INNER JOIN stores on stores.manager = 'George Jetson' AND sales.store_id = stores.store_id INNER JOIN products on products.manufacturer = 'Kellogg' AND products.product_id = sales.product_id where sales.shipped = TRUE AND sales.price > 49.98;
--select products.name,products.manufacturer,sales.purchase_date,sum(sales.quantity) from sales INNER JOIN products on sales.product_id = products.product_id group by products.name,products.manufacturer,sales.purchase_date;


