ALTER TABLE sales ALTER COLUMN unit_price SET NOT NULL;
ALTER TABLE sales ADD constraint positive_price check(unit_price > 0);
ALTER TABLE Customers ALTER COLUMN name SET NOT NULL;
ALTER TABLE sales ADD check(unit_price * quantity <= 1000);
