-- 1. Total revenue
SELECT SUM(total_price) AS total_revenue
FROM bookings;

-- 2. Revenue per hotel
SELECT h.hotel_name, SUM(b.total_price) AS revenue
FROM bookings b
JOIN rooms r ON b.room_id = r.room_id
JOIN hotels h ON r.hotel_id = h.hotel_id
GROUP BY h.hotel_name;

-- 3. Average price per room type
SELECT room_type, AVG(price_per_night) AS avg_price
FROM rooms
GROUP BY room_type;

-- 4. Number of bookings per month
SELECT DATE_TRUNC('month', check_in) AS month, COUNT(*) AS bookings_count
FROM bookings
GROUP BY month
ORDER BY month;

-- 5. Average stay duration
SELECT AVG(check_out - check_in) AS avg_stay_days
FROM bookings;

