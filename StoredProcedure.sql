DELIMITER $$
CREATE PROCEDURE AverageRatingForDriver(
    IN driverId INT,
    OUT avgRating FLOAT
)
BEGIN
    SELECT AVG(driver_rating)
    INTO avgRating
    FROM ratings r
    JOIN `order` o ON r.order_id = o.order_id
    WHERE o.driver_id = driverId;
END$$
DELIMITER ;
