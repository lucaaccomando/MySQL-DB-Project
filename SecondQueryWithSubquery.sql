SELECT o.order_id, p.person_name, r.restaurant_name, o.total_price
FROM `order` o
INNER JOIN person p ON o.person_id = p.person_id
INNER JOIN restaurant r ON o.restaurant_id = r.restaurant_id
WHERE o.total_price > (
    SELECT AVG(total_price) FROM `order`
);
