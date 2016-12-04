DROP FUNCTION IF EXISTS getProductID(text,text);
CREATE FUNCTION getProductID(IN temp_name TEXT, IN temp_manufacturer TEXT) RETURNS integer AS $$
DECLARE temp integer;
BEGIN
	select product_id into temp from products where name = temp_name and manufacturer = temp_manufacturer;	
	if(temp IS NULL) then
		--this gets the maximum product_id from products table and adds 1 to it to make sure
		--primary key constraint satisfies
		select max(product_id) into temp from products;
		temp := temp + 1;
		insert into products values(temp,temp_name,NULL,temp_manufacturer);
		return temp;
	else
		return temp;
	end if;
END;
$$ LANGUAGE plpgsql;
