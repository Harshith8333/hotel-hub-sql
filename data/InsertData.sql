INSERT INTO Location (location_id, city, country) VALUES
(1, 'New York', 'USA'),
(2, 'London', 'UK'),
(3, 'Paris', 'France'),
(4, 'Tokyo', 'Japan'),
(5, 'Sydney', 'Australia');

INSERT INTO Hotel (hotel_id, hotel_name, location_id, manager_id) VALUES
(1, 'Hotel NY', 1, 1),
(2, 'Hotel London', 2, 2),
(3, 'Hotel Paris', 3, 3),
(4, 'Hotel Tokyo', 4, 4),
(5, 'Hotel Sydney', 5, 5);

INSERT INTO Manager (manager_id, hotel_id, manager_name) VALUES
(1, 1, 'John Smith'),
(2, 2, 'Emma Johnson'),
(3, 3, 'Michael Brown'),
(4, 4, 'Sato Yamada'),
(5, 5, 'Sophie Wilson');

INSERT INTO Room (room_id, hotel_id, room_type, price, availability) VALUES
(101, 1, 'Standard', 100.00, true),
(102, 1, 'Deluxe', 150.00, true);

INSERT INTO Guest (guest_id, guest_name, email, phone, address) VALUES
(1, 'Alice Johnson', 'alice@example.com', '+1234567890', '123 Main St, New York'),
(2, 'Bob Smith', 'bob@example.com', '+1987654321', '456 Elm St, London');

INSERT INTO Employee (employee_id, hotel_id, role, name, schedule, payroll) VALUES
(1, 1, 'Front Desk Agent', 'Emily White', 'Mon-Fri 9am-5pm', 3000.00),
(2, 1, 'Housekeeper', 'James Brown', 'Mon-Sat 8am-4pm', 2500.00);

INSERT INTO Service (service_id, service_name, description, price) VALUES
(1, 'Spa Treatment', 'Relaxing massage and spa services', 80.00),
(2, 'Fine Dining', 'Gourmet meals and dining experience', 120.00);

INSERT INTO Reservation (reservation_id, guest_id, room_id, check_in_date, check_out_date) VALUES
(1001, 1, 101, '2024-05-01', '2024-05-05'),
(1002, 2, 102, '2024-06-10', '2024-06-15');

INSERT INTO Payment (payment_id, reservation_id, amount, payment_method) VALUES
(5001, 1001, 400.00, 'Credit Card'),
(5002, 1002, 750.00, 'Debit Card');

INSERT INTO Review (review_id, reservation_id, rating, comment) VALUES
(2001, 1001, 5, 'Excellent stay, wonderful service!'),
(2002, 1002, 4, 'Great experience overall, lovely room.');

INSERT INTO Promotion (promotion_id, hotel_id, promotion_name, description, discount) VALUES
(50001, 1, 'Summer Special', 'Enjoy 20% off on all room bookings', 20.00),
(50002, 2, 'Weekend Getaway', 'Book 2 nights, get the 3rd night free', 100.00);

INSERT INTO Supplier (supplier_id, supplier_name, contact_name, phone, email, address) VALUES
(1001, 'Linens Unlimited', 'Sarah Johnson', '+1234567890', 'info@linens.com', '789 Supplier St, City'),
(1002, 'Toiletries World', 'David Smith', '+1987654321', 'sales@toiletries.com', '456 Supplier Ave, Town');

INSERT INTO Housekeeping (housekeeping_id, hotel_id, employee_id, schedule) VALUES
(201, 1, 1, 'Mon-Sat 8am-4pm'),
(202, 2, 2, 'Mon-Fri 9am-5pm');

INSERT INTO Maintenance (maintenance_id, hotel_id, employee_id, schedule) VALUES
(301, 1, 1, 'Mon-Fri 8am-5pm'),
(302, 2, 2, 'Tue-Sat 9am-6pm');

INSERT INTO Event (event_id, hotel_id, event_name, event_date, description) VALUES
(10001, 1, 'Conference 2024', '2024-07-15', 'Annual tech conference'),
(10002, 2, 'Wedding Celebration', '2024-08-20', 'Grand wedding event');

INSERT INTO Inventory (inventory_id, hotel_id, item_name, quantity, supplier_id) VALUES
(1001, 1, 'Bed Sheets', 100, 1001),
(1002, 1, 'Towels', 200, 1001),
(1003, 2, 'Shampoo Bottles', 500, 1002);


