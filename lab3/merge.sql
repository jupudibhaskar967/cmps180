insert into sales
select store_id,customer_id,product_id,purchase_date,quantity,unit_price,'false' from newsales where (newsales.store_id,newsales.customer_id,newsales.product_id,newsales.purchase_date) not in (select sales.store_id,sales.customer_id,sales.product_id,sales.purchase_date from sales);
