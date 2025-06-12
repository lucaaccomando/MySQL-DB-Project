# 📦 Delivery and Rating System Database Project

## 🧾 Overview

This project implements a relational MySQL database for managing a food delivery and rating service. It handles data for customers, student drivers, vehicles, restaurants, orders, deliveries, and customer ratings. It also includes advanced SQL features like:

- Stored Procedures
- Functions
- Views
- Triggers
- Subqueries and Joins

Ideal for academic projects or small-scale delivery systems.

---

## 🗂️ Database Schema

The schema is normalized and supports relational integrity. Diagrams are included as `EERD1.png` and `EERD2.png`.

### 🔑 Primary Tables

- `person`: General customer/driver info.
- `driver`: Drivers (linked to `person` and `vehicle`).
- `vehicle`: Vehicle details (plate, model).
- `restaurant`: Restaurant info.
- `order`: Food order transactions.
- `delivery`: Tracks deliveries and timestamps.
- `ratings`: Feedback on drivers and restaurants.

### ➕ Additional Tables

- `student`, `faculty`, `staff`: For academic role support.

---

## ⚙️ Features

### 🔧 Stored Procedure

**File:** `StoredProcedure.sql`  
**Name:** `AverageRatingForDriver`

```sql
CALL AverageRatingForDriver(driver_id, @avg_rating);
SELECT @avg_rating;
```

---

### 🧮 Function

**File:** `Function.sql`  
**Name:** `GetHighestRating()`

Returns the maximum overall rating in the system.

---

### 👁️ View

**File:** `View.sql`  
**Name:** `DeliveryDetails`

```sql
SELECT * FROM DeliveryDetails;
```

Displays delivery ID, driver name, vehicle, and delivery time.

---

### 📌 Triggers

1. **File:** `DeleteTrigger.sql`  
   **Trigger:** `BeforeRestaurantDelete`  
   Logs deleted restaurants into `RestaurantAudit`.

2. **File:** `UpdateTrigger.sql`  
   **Trigger:** `BeforeRestaurantUpdate`  
   Logs name changes before restaurant updates.

3. **File:** `CreateAuditTable.sql`  
   Creates `RestaurantAudit` to store change logs.

---

## 🔍 Example Queries

### 🧵 Joins

**File:** `FirstQueryWithJoin.sql`

```sql
SELECT d.delivery_id, p.person_name AS driver_name, ...
```

### 🧩 Subqueries

**File:** `QueryWithSubquery.sql`

- Average driver ratings for deliveries using a specific vehicle.

**File:** `SecondQueryWithSubquery.sql`

- Orders with prices above the average.

---

## 🚀 Setup Instructions

1. **Clone the Repository**

```bash
git clone https://github.com/lucaaccomando/MySQL-DB-Project
```

2. **Set Up Database**

- Use MySQL Workbench or another client.
- Execute `.sql` files in the following order:
  - Table creation
  - Views
  - Triggers
  - Procedures and Functions
  - Sample queries

---

## ✅ Requirements

- MySQL 8.x+
- SQL Client (MySQL Workbench, DBeaver, etc.)

---

## 📊 Diagrams

See:
- `EERD1.png`
- `EERD2.png`

---

## 📄 License

This project is for educational and demonstration purposes.
