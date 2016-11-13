/*2.6.1*/
--DROP VIEW unshipped_products cascade;
CREATE VIEW unshipped_products AS
select name,manufacturer from Products INNER JOIN sales on sales.shipped=FALSE AND products.product_id = sales.product_id ORDER BY name,manufacturer;


