SELECT city, count(property_id) AS total_reservations
FROM reservations
JOIN properties ON reservations.property_id = properties.id
GROUP BY city
ORDER BY total_reservations DESC;