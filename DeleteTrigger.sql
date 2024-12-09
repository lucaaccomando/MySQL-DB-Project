DELIMITER  $$

CREATE TRIGGER BeforeRestaurantDelete
BEFORE DELETE ON restaurant
FOR EACH ROW
BEGIN
    INSERT INTO RestaurantAudit (restaurant_id, operation_type, old_name, new_name)
    VALUES (OLD.restaurant_id, 'DELETE', OLD.restaurant_name, NULL);
END$$

DELIMITER ;
