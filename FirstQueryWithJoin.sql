SELECT d.delivery_id, p.person_name AS driver_name, v.vehicle_plate, d.delivery_time
FROM delivery d
LEFT JOIN driver dr ON d.driver_id = dr.driver_id
LEFT JOIN person p ON dr.student_id = p.person_id
LEFT JOIN vehicle v ON d.vehicle_id = v.vehicle_id
WHERE d.delivery_time IS NOT NULL;
