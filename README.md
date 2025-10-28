# PSQL-Portfolio
A collection of PostgreSQL database projects demonstrating relational modeling, normalization, and real-world business logic.

# 🐘 PostgreSQL Project Portfolio

This repository is a curated collection of PostgreSQL projects designed to showcase proficiency in database design, relational modeling, and structured query development.

Each project represents a practical scenario — from restaurant management to e-commerce — illustrating how to design and implement normalized schemas, relationships, and constraints that enforce real-world business rules.

The repository is structured by technical domain to demonstrate progressive understanding of PostgreSQL and SQL-based data modeling.

---

## 📁 Projects Collection

### 1. 🍽️ Restaurant Management DB
A comprehensive database for a restaurant, tracking everything from ingredients and recipes to customer orders and chefs.  
**Demonstrates:** Advanced many-to-many relationships (with attributes in intersection tables), 3NF normalization, and complex schema design.  
**[View Project Folder](./RestaurantManagement/)**

---

### 2. 🎓 University Management DB
A database designed to manage a university’s core data: students, lecturers, courses, departments, and enrollments.  
**Demonstrates:** M2M relationships (students-to-courses, lecturers-to-courses) and normalization.  
**[View Project Folder](./StudentManagementSystem/)**

---

### 3. 🎵 MusicHub DB
A database for a music streaming service, managing customers, songs, and personal playlists.  
**Demonstrates:** M2M relationships (linking songs to playlists) and structured data organization.  
**[View Project Folder](./MusicHub/)**

---

### 4. 🚗 Car Rental Management DB
A database for a car rental business. It manages the car inventory, customers, rentals, payments, and reviews.  
**Demonstrates:** Extensive use of `CHECK` and `UNIQUE` constraints to enforce business logic (e.g., valid ratings, correct date rules).  
**[View Project Folder](./CarRentalManagement/)**

---

### 5. 🛒 E-Commerce Management DB
A database for a small e-commerce shop, handling customers, products, orders, and order items.  
**Demonstrates:** Composite primary keys, `UNIQUE` fields, and `CHECK` constraints. Includes validation queries that correctly fail to ensure rule enforcement.  
**[View Project Folder](./ECommerceManagement/)**

---

### 6. 🎬 Cinema Management DB
A database for a cinema, managing locations, screens, movies, and ticket sales.  
**Demonstrates:** Use of composite `UNIQUE` keys to enforce real-world rules (e.g., one seat per screen) and proper data integrity checks.  
**[View Project Folder](./CinemaManagement/)**

---

## ⚙️ Execution Requirements
These SQL scripts were developed and tested in PostgreSQL 16+.  
Each project folder contains a `.sql` file with table creation, relationships, constraints, and optional test data inserts.

---

## 👩‍💻 Author
**Denisa R.**  
*Computer Science Student – University of Portsmouth*
