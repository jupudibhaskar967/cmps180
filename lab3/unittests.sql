
/* unit tests that violates foreign key constraints*/


/*unit test that violates foreign key constraint on customer_id*/
delete from customers where customer_id = 6; 


/*unit test that violates foreign key constraint on product_id*/
delete from products where product_id = 1000; 


/*unit test that violates foreign key constraint on store_id*/
delete from stores where store_id = 200; 



/***********************************************************************/

/*
UNIT TEST CASES FOR GENERAL CONSTRAINTS
*/

/*2 unit tests for general constraint 1*/
/*unit test that meets general constraint 1*/
insert into sales values(200,1,1000,'2050-09-15',1,100,TRUE);
/*unit test that violates general constraint 1*/
insert into sales values(200,1,1000,'2051-09-15',1,NULL,TRUE);



/*2 unit tests for general constraint 2*/
/*unit test that meets general constraint 2*/
insert into sales values(200,1,1000,'2052-09-15',1,87.90,TRUE);
/*unit test that violates general constraint 2*/
insert into sales values(200,1,1000,'2053-09-15',1,-100,TRUE);


/*2 unit tests for general constraint 3*/
/*unit test that meets general constraint 3*/
insert into customers values(28,'Optimus Prime',' 101 Cybertron street','optimus@autobot.edu');
/*unit test that violates general constraint 3*/
insert into customers values(29,NULL,'101 chestnut street','dummy@ucsc.edu');


/*2 unit tests for general constraint 4*/
/*unit test that meets general constraint 4*/
insert into sales values(200,1,1000,'2054-09-15',10,10.12,TRUE);
/*unit test that violates general constraint 4*/
insert into sales values(200,1,1000,'2055-09-15',100,100.0,TRUE);
