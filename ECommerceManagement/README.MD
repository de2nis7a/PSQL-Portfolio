# 🛒 ECommerceManagement-DB

This project is a PostgreSQL database for managing a small **e-commerce system**.  
It handles **customers**, **products**, **orders**, and **order items**, demonstrating order tracking and relational integrity.

---

## 📘 Features
- Stores and manages **customer** contact information.  
- Tracks **products** with pricing constraints.  
- Handles **orders** including total amount checks.  
- Links **orders** and **products** through **order items** (many-to-many relationship).  
- Demonstrates constraints like **unique fields** and **CHECK conditions**.  

---

## 🧱 Database Structure
**Main Tables:**
- `customers` — stores customer names, email, and phone number.  
- `products` — contains product names and prices.  
- `orders` — records customer orders with dates and totals.  
- `order_items` — intersection table table linking orders to products with quantity.  

---

## 🧠 Demonstrated Skills
- **Relational database design**  
- **Primary & foreign key usage**  
- **Data integrity using UNIQUE and CHECK constraints**  
- **Many-to-many relationship modeling**  
- **Insertion of valid data and prevention of invalid entries** 

---

## 🚀 How to Use
1.  **Create a database** in your PostgreSQL instance (e.g., `CREATE DATABASE ecommerce;`).
2.  **Connect** to your new database.
3.  **Run** the entire SQL script from this repository to create the tables and insert the sample data.

---

## 📩 Author
**Denisa R.**  
*Computer Science Student – University of Portsmouth*