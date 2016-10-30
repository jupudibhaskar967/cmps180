DROP VIEW view1 cascade;
CREATE VIEW view1 AS 
select store_id,customer_id,product_id,purchase_date,quantity,unit_price from sales;


CREATE VIEW view2 AS 
select * from newsales
EXCEPT
select * from view1;



insert into sales
select store_id,customer_id,product_id,purchase_date,quantity,unit_price,'false' from view2 where (store_id,customer_id,product_id,purchase_date,quantity) not in (select store_id,customer_id,product_id,purchase_date,quantity from sales);


