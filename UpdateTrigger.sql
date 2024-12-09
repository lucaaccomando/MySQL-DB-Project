DELIMITER $$

CREATE TRIGGER BeforeRestaurantUpdate
BEFORE UPDATE ON restaurant
FOR EACH ROW
BEGIN
    INSERT INTO RestaurantAudit (restaurant_id, operation_type, old_name, new_name)
    VALUES (OLD.restaurant_id, 'UPDATE', OLD.restaurant_name, NEW.restaurant_name);
END$$

DELIMITER ;
