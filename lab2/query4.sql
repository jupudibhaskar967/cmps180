select DISTINCT ON (Products.name) Products.product_id,Products.name from Products INNER JOIN sales ON Sales.product_id = Products.product_id AND Sales.purchase_date = '2016-07-04';
