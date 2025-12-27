-- Hotel database schema

CREATE TABLE hotels (
    hotel_id INT PRIMARY KEY,
    hotel_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE rooms (
    room_id INT PRIMARY KEY,
    hotel_id INT,
    room_type VARCHAR(50),
    price_per_night DECIMAL(10,2),
    FOREIGN KEY (hotel_id) REFERENCES hotels(hotel_id)
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    room_id INT,
    check_in DATE,
    check_out DATE,
    total_price DECIMAL(10,2),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);
