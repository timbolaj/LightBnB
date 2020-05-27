SELECT (reservations.*), (properties.*), avg(property_reviews.rating)
FROM reservations
JOIN properties on reservations.property_id = properties.id
JOIN property_reviews on reservations.id = reservation_id
WHERE reservations.guest_id = 1 and end_date < now()::date
GROUP BY reservations.id, properties.id
ORDER BY start_date
LIMIT 10;