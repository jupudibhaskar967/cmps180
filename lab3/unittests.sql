delete from customers where customer_id = 6; 
delete from products where product_id = 1000; 
delete from stores where store_id = 200; 




insert into sales values(200,1,1000,'2050-09-15',1,100,TRUE);
insert into sales values(200,1,1000,'2051-09-15',1,NULL,TRUE);



insert into sales values(200,1,1000,'2052-09-15',1,87.90,TRUE);
insert into sales values(200,1,1000,'2053-09-15',1,-100,TRUE);



insert into customers values(28,'Optimus Prime',' 101 Cybertron street','optimus@autobot.edu');
insert into customers values(29,NULL,'101 chestnut street','dummy@ucsc.edu');



insert into sales values(200,1,1000,'2054-09-15',10,10.12,TRUE);
insert into sales values(200,1,1000,'2055-09-15',100,100.0,TRUE);
