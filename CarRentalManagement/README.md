# 🚗 CarRentalManagement-DB

This project is a PostgreSQL database for managing a **car rental system**.  
It handles cars, customers, rentals, payments, and rental reviews, demonstrating relational integrity and data validation.

---

## 📘 Features
- Stores and manages **car inventory** with make, model, year, and price.  
- Tracks **customers** and their contact information.  
- Handles **rentals** including start and end dates with constraints.  
- Manages **rental payments** with amount checks.  
- Allows **rental reviews** with ratings and optional comments.  
- Enforces **data integrity** with UNIQUE and CHECK constraints.  

---

## 🧱 Database Structure
**Main Tables:**
- `cars` — holds car details including price constraints.  
- `customers` — stores customer names, email, and phone number.  
- `rentals` — records car rentals with start and end dates.  
- `rental_payments` — stores payments linked to rentals.  
- `rental_reviews` — contains customer reviews and ratings for rentals.  

---

## 🧠 Demonstrated Skills
- **Relational database design**  
- **Primary & foreign key usage** a
- **Data integrity with UNIQUE and CHECK constraints**  
- **Many-to-many relationship modeling**  
- **Validation of business rules in database schema**  

---

## 🚀 How to Use
1.  **Create a database** in your PostgreSQL instance (e.g., `CREATE DATABASE car_rental;`).
2.  **Connect** to your new database.
3.  **Run** the entire SQL script from this repository to create the tables and insert the sample data.

---

## 📩 Author
**Denisa R.**  
*Computer Science Student – University of Portsmouth*