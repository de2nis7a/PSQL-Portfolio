# PSQL-Portfolio
A portfolio of PostgreSQL scripts and projects demonstrating real-world DB management.

# 🐘 PostgreSQL Project Portfolio

Welcome to my collection of PostgreSQL database projects.

This repository contains a series of small, self-contained database schemas I have designed and implemented. Each project is in its own folder and includes a detailed `README.md` file explaining its features, structure, and the skills demonstrated.

---

## Projects Collection

Here is a list of the database projects included in this portfolio:

### 1. 🍽️ Restaurant Management DB
A comprehensive database for a restaurant, tracking everything from ingredients and recipes to customer orders and chefs.
* **Demonstrates:** Advanced M2M relationships (with attributes in junction tables), 3NF normalization, and complex schema design.
* **[View Project](./RestaurantManagement/)**

### 2. 🎓 University Management DB
A database designed to manage a university's core data: students, lecturers, courses, departments, and enrollments.
* **Demonstrates:** M2M relationships (students-to-courses, lecturers-to-courses) and normalization.
* **[View Project](./StudentManagementSystem/)**

### 3. 🎵 MusicHub DB
A database for a music streaming service, managing customers, songs, and personal playlists.
* **Demonstrates:** M2M relationships (linking songs to playlists) and data organization.
* **[View Project](./MusicHub/)**

### 4. 🚗 Car Rental Management DB
A database for a car rental business. It manages the car inventory, customers, rentals, payments, and reviews.
* **Demonstrates:** Extensive use of `CHECK` and `UNIQUE` constraints to enforce business rules (e.g., valid ratings, correct date logic).
* **[View Project](./CarRentalManagement/)**

### 5. 🛒 E-Commerce Management DB
A database for a small e-commerce shop, handling customers, products, orders, and order items.
* **Demonstrates:** `UNIQUE` fields, `CHECK` constraints, and M2M relationships with composite primary keys. Includes sample queries that correctly fail.
* **[View Project](./ECommerceManagement-DB/)**

### 6. 🎬 Cinema Management DB
A database for a cinema, managing cinema locations, screens, movies, and ticket sales.
* **Demonstrates:** Use of composite `UNIQUE` keys to enforce business logic (e.g., one seat per screen) and `CHECK` constraints.
* **[View Project](./CinemaManagement-DB/)**

---

## 📩 Author
**Denisa R.**  
*Computer Science Student – University of Portsmouth*