DROP VIEW unshipped_products cascade;

CREATE VIEW unshipped_products AS
select name,manufacturer from Products INNER JOIN sales on sales.shipped=FALSE AND products.product_id = sales.product_id ORDER BY name,manufacturer;


select DISTINCT manufacturer from unshipped_products;



DELETE from sales where store_id=300 AND customer_id=8 AND product_id=8000 AND purchase_date='10/21/2016';
DELETE from sales where store_id=300 AND customer_id=2 AND product_id=7000 AND purchase_date='10/22/2016';
DELETE from sales where store_id=500 AND customer_id=10 AND product_id=8000 AND purchase_date='10/21/2016';
DELETE from sales where store_id=500 AND customer_id=11 AND product_id=9000 AND purchase_date='10/23/2016';


select DISTINCT manufacturer from unshipped_products;
