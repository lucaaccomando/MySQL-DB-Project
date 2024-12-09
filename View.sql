CREATE VIEW DeliveryDetails AS
SELECT 
    d.delivery_id,
    p.person_name AS driver_name,
    d.delivery_time,
    v.vehicle_plate AS vehicle
FROM delivery d
JOIN driver dr ON d.driver_id = dr.driver_id
JOIN person p ON dr.student_id = p.person_id
JOIN vehicle v ON d.vehicle_id = v.vehicle_id;
