CREATE DATABASE TOP_USERS_GIVEAWAY;
USE TOP_USERS_GIVEAWAY;
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100)
);
CREATE TABLE hotels (
    hotel_id INT PRIMARY KEY,
    hotel_name VARCHAR(100),
    star_rating INT  -- 3, 4, 5
);
CREATE TABLE bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    hotel_id INT,
    total_price DECIMAL(12,0),
    status VARCHAR(20),
    created_at DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (hotel_id) REFERENCES hotels(hotel_id)
);
INSERT INTO users (user_id, user_name) 
VALUES
(1, 'An'),
(2, 'Binh'),
(3, 'Chi'),
(4, 'Dung'),
(5, 'Hanh'),
(6, 'Khanh'),
(7, 'Linh'),
(8, 'Minh'),
(9, 'Nam'),
(10, 'Phuong');
INSERT INTO hotels (hotel_id, hotel_name, star_rating) 
VALUES
(1, 'Luxury Palace', 5),
(2, 'Ocean View', 5),
(3, 'City Hotel', 4),
(4, 'Business Inn', 4),
(5, 'Budget Stay', 3),
(6, 'Cheap Sleep', 3),
(7, 'Premium Resort', 5),
(8, 'Sky Hotel', 4),
(9, 'Mini Hotel', 3),
(10, 'Elite Suites', 5);
INSERT INTO bookings (user_id, hotel_id, total_price, status, created_at) 
VALUES
(1, 1, 30000000, 'COMPLETED', '2026-01-01'),
(1, 2, 25000000, 'COMPLETED', '2026-01-02'),

(2, 3, 30000000, 'COMPLETED', '2026-01-03'),
(2, 4, 25000000, 'COMPLETED', '2026-01-04'),

(3, 1, 60000000, 'FAILED', '2026-01-05'),

(4, 1, 20000000, 'COMPLETED', '2026-01-06'),

(5, 1, 60000000, 'COMPLETED', '2026-01-07'),
(5, 1, -20000000, 'COMPLETED', '2026-01-08'),

(6, 1, 30000000, 'COMPLETED', '2026-01-09'), 
(6, 5, 30000000, 'COMPLETED', '2026-01-10'); 
SELECT u.user_name AS 'Tên khách hàng', h.star_rating AS 'Đánh giá', SUM(b.total_price) AS 'Tổng tiền khách đã chi tiêu'
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN hotels h ON b.hotel_id = h.hotel_id
WHERE status = 'COMPLETED' 
AND b.total_price > 0
GROUP BY u.user_id, u.user_name, h.star_rating
HAVING SUM(b.total_price) > 50000000
ORDER BY h.star_rating DESC, SUM(b.total_price) DESC;