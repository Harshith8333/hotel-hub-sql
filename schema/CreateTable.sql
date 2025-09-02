CREATE DATABASE hm;
USE hm;

CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

CREATE TABLE Hotel (
    hotel_id INT PRIMARY KEY,
    hotel_name VARCHAR(100) NOT NULL,
    location_id INT,
    manager_id INT,
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
    );

CREATE TABLE Manager (
    manager_id INT PRIMARY KEY,
    hotel_id INT,
    manager_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)
);

CREATE TABLE Room (
    room_id INT PRIMARY KEY,
    hotel_id INT,
    room_type VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    availability BOOLEAN,
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)
);

CREATE TABLE Guest (
    guest_id INT PRIMARY KEY,
    guest_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(255)
);

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    hotel_id INT,
    role VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    schedule VARCHAR(255),
    payroll DECIMAL(10, 2),
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)
);

CREATE TABLE Service (
    service_id INT PRIMARY KEY,
    service_name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2)
);

CREATE TABLE Reservation (
    reservation_id INT PRIMARY KEY,
    guest_id INT,
    room_id INT,
    check_in_date DATE,
    check_out_date DATE,
    FOREIGN KEY (guest_id) REFERENCES Guest(guest_id),
    FOREIGN KEY (room_id) REFERENCES Room(room_id)
);

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY,
    reservation_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(50),
    FOREIGN KEY (reservation_id) REFERENCES Reservation(reservation_id)
);

CREATE TABLE Review (
    review_id INT PRIMARY KEY,
    reservation_id INT,
    rating INT,
    comment TEXT,
    FOREIGN KEY (reservation_id) REFERENCES Reservation(reservation_id)
);

CREATE TABLE Housekeeping (
    housekeeping_id INT PRIMARY KEY,
    hotel_id INT,
    employee_id INT,
    schedule VARCHAR(255),
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Maintenance (
    maintenance_id INT PRIMARY KEY,
    hotel_id INT,
    employee_id INT,
    schedule VARCHAR(255),
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Event (
    event_id INT PRIMARY KEY,
    hotel_id INT,
    event_name VARCHAR(100) NOT NULL,
    event_date DATE,
    description TEXT,
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)
);

CREATE TABLE Promotion (
    promotion_id INT PRIMARY KEY,
    hotel_id INT,
    promotion_name VARCHAR(100) NOT NULL,
    description TEXT,
    discount DECIMAL(5, 2),
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)
);

CREATE TABLE Supplier (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    contact_name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY,
    hotel_id INT,
    item_name VARCHAR(100) NOT NULL,
    quantity INT,
    supplier_id INT,
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id),
    FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);
