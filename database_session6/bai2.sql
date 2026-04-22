SELECT hotel_id, MIN(price_per_night)
FROM Rooms
GROUP BY hotel_id;