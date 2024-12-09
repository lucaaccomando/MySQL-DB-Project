SELECT p.person_name AS driver_name, AVG(r.driver_rating) AS average_rating
FROM person p
JOIN driver d ON p.person_id = d.student_id
JOIN `order` o ON d.driver_id = o.driver_id
JOIN ratings r ON o.order_id = r.order_id
WHERE d.driver_id IN (
    SELECT driver_id FROM delivery WHERE vehicle_id = 1
)
GROUP BY p.person_name;
