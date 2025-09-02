-- 1. Select all hotels
SELECT * FROM Hotel;

-- 2. Select all rooms in Hotel ID 1
SELECT * FROM Room WHERE hotel_id = 1;

-- 3. Select all guests from New York hotels
SELECT * FROM Guest WHERE guest_id IN (
    SELECT guest_id FROM Reservation WHERE room_id IN (
        SELECT room_id FROM Room WHERE hotel_id IN (
            SELECT hotel_id FROM Hotel WHERE location_id = 1
        )
    )
);

-- 4. Select all employees in Hotel ID 2
SELECT * FROM Employee WHERE hotel_id = 2;

-- 5. Select all reservations made by guest with ID 1
SELECT * FROM Reservation WHERE guest_id = 1;

-- 6. Select all payments for reservations in Hotel ID 3
SELECT * FROM Payment WHERE reservation_id IN (
    SELECT reservation_id FROM Reservation WHERE room_id IN (
        SELECT room_id FROM Room WHERE hotel_id = 3
    )
);

-- 7. Select all reviews for reservations in Hotel ID 4
SELECT * FROM Review WHERE reservation_id IN (
    SELECT reservation_id FROM Reservation WHERE room_id IN (
        SELECT room_id FROM Room WHERE hotel_id = 4
    )
);

-- 8. Select all events in Hotel ID 5
SELECT * FROM Event WHERE hotel_id = 5;

-- 9. Select all promotions in Hotel ID 1
SELECT * FROM Promotion WHERE hotel_id = 1;

-- 10. Select all suppliers providing items to Hotel ID 2
SELECT * FROM Supplier WHERE supplier_id IN (
    SELECT supplier_id FROM Inventory WHERE hotel_id = 2
);

-- 11. Select all available rooms in Hotel ID 3
SELECT * FROM Room WHERE hotel_id = 3 AND availability = true;

-- 12. Select the total number of guests in Hotel ID 4
SELECT COUNT(DISTINCT guest_id) AS total_guests FROM Reservation WHERE room_id IN (
    SELECT room_id FROM Room WHERE hotel_id = 4
);

-- 13. Select the average rating for Hotel ID 5
SELECT AVG(rating) AS avg_rating FROM Review WHERE reservation_id IN (
    SELECT reservation_id FROM Reservation WHERE room_id IN (
        SELECT room_id FROM Room WHERE hotel_id = 5
    )
);

-- 14. Select the total payroll for employees in Hotel ID 1
SELECT SUM(payroll) AS total_payroll FROM Employee WHERE hotel_id = 1;

-- 15. Select the most expensive room in Hotel ID 2
SELECT * FROM Room WHERE hotel_id = 2 ORDER BY price DESC LIMIT 1;

-- 16. Select the top 5 reservations with the highest payment amounts
SELECT * FROM Payment ORDER BY amount DESC LIMIT 5;

-- 17. Select all guests who stayed in Hotel ID 3 and checked out in May 2024
SELECT * FROM Guest WHERE guest_id IN (
    SELECT guest_id FROM Reservation WHERE room_id IN (
        SELECT room_id FROM Room WHERE hotel_id = 3
    ) AND check_out_date BETWEEN '2024-05-01' AND '2024-05-31'
);

-- 18. Select the total number of events happening in Hotel ID 4
SELECT COUNT(event_id) AS total_events FROM Event WHERE hotel_id = 4;

-- 19. Select the top 3 most popular services based on total revenue
SELECT Service.service_id, Service.service_name, SUM(Payment.amount) AS total_revenue 
FROM Payment 
JOIN Reservation ON Payment.reservation_id = Reservation.reservation_id 
JOIN Room ON Reservation.room_id = Room.room_id 
JOIN Service ON Service.service_id = Room.room_id  -- Adjust this JOIN condition based on your schema
WHERE Room.hotel_id = 5 
GROUP BY Service.service_id, Service.service_name 
ORDER BY total_revenue DESC 
LIMIT 3;

-- 20. Select all rooms in Hotel ID 5 with a price range between $100 and $200
SELECT * FROM Room WHERE hotel_id = 5 AND price BETWEEN 100 AND 200;
