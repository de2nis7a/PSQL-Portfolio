
# 🎓 UniversityManagement-DB

This project is a PostgreSQL database designed to manage information within a university environment.  
It includes tables for **students**, **lecturers**, **departments**, **courses**, and their relationships.  
The database allows tracking of student enrollments, lecturer assignments, and course grades.

---

## 📘 Features
- Stores and manages **students**, **lecturers**, and **departments** data.  
- Tracks **student course enrollments** and corresponding **grades**.  
- Links lecturers to their **departments** and **courses**.  
- Demonstrates **relational integrity** through foreign keys and junction tables.  

---

## 🧱 Database Structure
**Main Tables:**
- `departments` — holds university department data.  
- `students` — stores student details including year and contact info.  
- `lecturers` — manages lecturer details and assigned departments.  
- `courses` — contains course names.  
- `lecturers_courses` — many-to-many relationship between lecturers and courses.  
- `students_courses` — many-to-many relationship between students and courses, including grades.  

---

## 🧠 Demonstrated Skills
- **Database normalization (1NF–3NF)**  
- **Relational schema design**  
- **Use of primary & foreign keys**  
- **Junction tables for many-to-many relationships**  
- **Efficient data organization and integrity**

---

## 🚀 How to Use
1.  **Create a database** in your PostgreSQL instance (e.g., `CREATE DATABASE university;`).
2.  **Connect** to your new database.
3.  **Run** the entire SQL script from this repository to create the tables and insert the sample data.

---

## 📩 Author
**Denisa R.**  
*Computer Science Student – University of Portsmouth*
