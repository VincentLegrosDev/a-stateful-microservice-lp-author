SET @column_exists = (
    SELECT COUNT(*) 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE table_name = 'orders' 
    AND column_name = 'shipping_cost'
);

IF @column_exists = 0 THEN 
  ALTER TABLE orders
  ADD COLUMN shipping_cost float;
END IF;
