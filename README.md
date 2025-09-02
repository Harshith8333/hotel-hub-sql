# 🏨 Hotel Hub - Complete Hotel Management SQL Project ✨

## 📚 Overview

Welcome to Hotel Hub! 🎉 This is a comprehensive hotel management system built using SQL. This exciting project demonstrates database design, implementation, and management for a complete hotel operation system. The project includes a well-structured database schema, sample data for testing, and an Entity Relationship Diagram (ERD) for better understanding of the database architecture.

## 🌟 What's Inside - Features

- 🛏️ **Room Management**: Track room types, availability, and pricing
- 👥 **Guest Management**: Store guest information and booking history  
- 📅 **Reservation System**: Handle bookings, check-ins, and check-outs
- 👨‍💼 **Staff Management**: Manage employee records and roles
- 💳 **Billing System**: Generate invoices and handle payments
- 🛎️ **Service Management**: Track additional services and amenities
- 📊 **Reporting**: Generate various reports for management insights

## 💾 Database Schema

The database includes the following main tables:

- 🟢 `guests` - Guest information and contact details
- 🟢 `rooms` - Room details, types, and pricing
- 🟢 `reservations` - Booking information and status
- 🟢 `staff` - Employee records and roles
- 🟢 `services` - Additional hotel services
- 🟢 `billing` - Invoice and payment records
- 🟢 `room_types` - Different room categories and specifications

## 📁 Project Structure

```
hotel-hub-sql/
├── 🗄️ CreateTable.sql
├── 📊 InsertData.sql
├── 🔍 Queries.sql
├── 🎨 ERD.jpg
├── 📝 Hotel-Hub.docx
└── 📖 README.md
```

## 🚀 Getting Started

### 📋 Prerequisites

- 🔵 MySQL 5.7+ or PostgreSQL 10+
- 🔵 SQL client (MySQL Workbench, pgAdmin, or similar)

### ⚙️ Installation

1. **Clone this repository** 📥
   ```bash
   git clone https://github.com/Harshith8333/hotel-hub-sql.git
   cd hotel-hub-sql
   ```

2. **Create a new database** 🗄️
   ```sql
   CREATE DATABASE hotel_hub;
   USE hotel_hub;
   ```

3. **Run the schema creation script** 🛠️
   ```bash
   mysql -u your_username -p hotel_hub < CreateTable.sql
   ```

4. **Load sample data** 📊
   ```bash
   mysql -u your_username -p hotel_hub < InsertData.sql
   ```

## 💡 Usage Examples

### 🔍 Check Room Availability

```sql
SELECT r.room_number, rt.type_name, r.price_per_night
FROM rooms r
JOIN room_types rt ON r.room_type_id = rt.id
WHERE r.status = 'available'
ORDER BY r.price_per_night;
```

### 📖 Get Guest Booking History

```sql
SELECT g.first_name, g.last_name, res.check_in_date, res.check_out_date, r.room_number
FROM guests g
JOIN reservations res ON g.id = res.guest_id
JOIN rooms r ON res.room_id = r.id
WHERE g.id = 1
ORDER BY res.check_in_date DESC;
```

### 💰 Revenue Report

```sql
SELECT 
    DATE_FORMAT(check_in_date, '%Y-%m') as month,
    COUNT(*) as total_bookings,
    SUM(total_amount) as total_revenue
FROM reservations
WHERE status = 'completed'
GROUP BY DATE_FORMAT(check_in_date, '%Y-%m')
ORDER BY month DESC;
```


## 🎯 Key Learning Objectives

- 🔵 Database design principles
- 🔵 Normalization and denormalization
- 🔵 SQL query optimization
- 🔵 Constraint management
- 🔵 Index creation and usage
- 🔵 Complex joins and subqueries
- 🔵 Stored procedures and functions
- 🔵 Trigger implementation
- 🔵 Report generation

## 🛠️ Technologies Used

• **Database**: MySQL / PostgreSQL 💾
• **Tools**: SQL Scripts, Database Design Tools 🔧
• **Documentation**: Markdown, ERD Diagrams 📝

## 📝 Sample Queries Included

- 🟢 Basic CRUD operations
- 🟢 Complex joins and subqueries
- 🟢 Aggregation and grouping
- 🟢 Window functions
- 🟢 Stored procedures
- 🟢 Triggers
- 🟢 Views creation
- 🟢 Performance optimization queries

## 🤝 Contributing

Contributions are welcome! 🎉 Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

## 🚀 Future Enhancements

- 🌐 Integration with web interface
- 🔗 API development
- 📈 Advanced analytics dashboard
- 📱 Mobile app integration
- 💳 Payment gateway integration
- 📦 Inventory management

## 👨‍💻 Author

**Harshith Kumar Varma Penmetsa** 
