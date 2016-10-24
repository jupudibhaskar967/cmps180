select Stores.manager,Stores.store_id,Customers.address from stores INNER JOIN customers ON customers.name = stores.manager;
