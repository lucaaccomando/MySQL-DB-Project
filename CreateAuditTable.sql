CREATE TABLE RestaurantAudit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_id INT,
    operation_type VARCHAR(10),
    old_name VARCHAR(75),
    new_name VARCHAR(75),
    audit_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);
