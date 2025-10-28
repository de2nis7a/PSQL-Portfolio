  # 🍽️ RestaurantManagement-DB

This project is a comprehensive PostgreSQL database for a **restaurant management system**.  
It is designed to track the entire operational flow, from **ingredients** and **chefs** to **dishes** on the menu and final **customer orders**.

---

## 📘 Features
- Manages **customer** information and their **orders**.
- Tracks restaurant staff, specifically **chefs** and their specialities.
- Manages a full **menu**, including **dishes** and their **categories**.
- Handles inventory tracking for **ingredients**.
- Implements two key many-to-many (M2M) relationships:
    1.  **Dish Recipes:** Links `dishes` to their required `ingredients` with specific quantities.
    2.  **Order Details:** Links `orders` to the `dishes` chosen by the customer, with quantities.

---

## 🧱 Database Structure
**Main Tables:**
- `customers`: Stores customer contact information.
- `categories`: Organizes dishes into categories (e.g., 'Pasta', 'Poultry').
- `ingredients`: Holds details for all kitchen ingredients.
- `chefs`: Stores information about the chefs and their specialities.
- `orders`: Records customer orders with date and time.
- `dishes`: Contains menu items, linked to a category and a primary chef.
- `ingredients_dish`: M2M intersection table detailing a dish's recipe (ingredients and quantities).
- `order_details`: M2M intersection table detailing an order's contents (dishes and quantities).

---

## 🧠 Demonstrated Skills
- **Advanced relational schema design**
- **Normalization (up to 3NF)**
- **Implementation of multiple Many-to-Many relationships**
- **Using attributes in junction tables** (e.g., `ingredient_qty`, `dish_qty`)
- **Primary, Foreign, and Composite key management**
- **Data integrity through `UNIQUE` constraints**

---

## 🚀 How to Use
1.  **Create a database** in your PostgreSQL instance (e.g., `CREATE DATABASE restaurant;`).
2.  **Connect** to your new database.
3.  **Run** the entire SQL script from this repository to create all 8 tables and insert the sample data.

---

## 📩 Author
**Denisa R.**  
*Computer Science Student – University of Portsmouth*