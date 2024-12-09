DELIMITER $$

CREATE FUNCTION GetHighestRating()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE maxRating INT;
    SELECT MAX(overall_rating) INTO maxRating FROM ratings;
    RETURN maxRating;
END$$

DELIMITER ;
