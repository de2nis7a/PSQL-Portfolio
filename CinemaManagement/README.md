# 🎬 CinemaManagement-DB

This project is a PostgreSQL database for managing **cinemas, screens, movies, and tickets**.  
It handles ticket sales, movie screenings, and cinema locations while enforcing data integrity and constraints.

---

## 📘 Features
- Stores and manages **cinema** information including unique names and locations.  
- Tracks **screens** with specific dates and times.  
- Manages **movies** with titles and genres.  
- Handles **ticket sales** with seat numbers and price constraints.  
- Demonstrates **unique constraints** and **CHECK conditions** for valid data. g

---

## 🧱 Database Structure
**Main Tables:**
- `cinemas` — holds cinema names and locations.  
- `screens` — records individual screenings at cinemas.  
- `movies` — stores movie titles and genres.  
- `tickets` — links movies to screens and seat numbers, including ticket prices.  

---

## 🧠 Demonstrated Skills
- **Relational database design**  
- **Primary & foreign key usage**  
- **Data integrity with UNIQUE and CHECK constraints**  
- **Many-to-many relationship modeling through junction tables**  
- **Prevention of invalid data insertion**

---

## 🚀 How to Use
1.  **Create a database** in your PostgreSQL instance (e.g., `CREATE DATABASE cinema;`).
2.  **Connect** to your new database.
3.  **Run** the entire SQL script from this repository to create the tables and insert the sample data.

---

## 📩 Author
**Denisa R.**  
*Computer Science Student – University of Portsmouth*