--RestaurantManagement-DB
CREATE TABLE customers(
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(50) NOT NULL,
    cust_mid_name VARCHAR(50),
    cust_surname VARCHAR(50) NOT NULL,
    cust_addr1 VARCHAR(30) NOT NULL,
    cust_addr2 VARCHAR(30),
    cust_city VARCHAR(30) NOT NULL,
    cust_postcode CHAR(8),
    cust_business_email VARCHAR(150),
    cust_personal_email VARCHAR(150) NOT NULL UNIQUE,
    cust_mobile VARCHAR(15) NOT NULL UNIQUE,
    cust_landline VARCHAR(15)
);

CREATE TABLE categories(
    cat_id SERIAL PRIMARY KEY,
    cat_name VARCHAR(50) NOT NULL,
    cat_description VARCHAR(200)
);

CREATE TABLE ingredients(
    ingredient_id SERIAL PRIMARY KEY,
    ingredient_name VARCHAR(50) NOT NULL,
    ingredient_weight DECIMAL(5,2),
    ingredient_notes VARCHAR(250)
);

CREATE TABLE chefs(
    chef_id SERIAL PRIMARY KEY,
    chef_name VARCHAR(50) NOT NULL,
    chef_last_name VARCHAR(50) NOT NULL,
    chef_speciality VARCHAR(100) NOT NULL,
    chef_mobile VARCHAR(15) NOT NULL UNIQUE,
    chef_email VARCHAR(150) NOT NULL UNIQUE,
    chef_station SMALLINT NOT NULL
);

CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    cust_id INT NOT NULL REFERENCES customers(cust_id),
    order_date DATE NOT NULL,
    order_time TIME NOT NULL
);

CREATE TABLE dishes(
    dish_id SERIAL PRIMARY KEY,
    cat_id INT NOT NULL REFERENCES categories(cat_id),
    chef_id INT NOT NULL REFERENCES chefs(chef_id),
    dish_name VARCHAR(100) NOT NULL,
    dish_description TEXT
);

CREATE TABLE ingredients_dish(
    ingredient_id INT NOT NULL REFERENCES ingredients(ingredient_id),
    dish_id INT NOT NULL REFERENCES dishes(dish_id),
    ingredient_qty SMALLINT NOT NULL,
    ingredient_weight DECIMAL(5,2),
    PRIMARY KEY(ingredient_id, dish_id)
);

CREATE TABLE order_details(
    order_id INT NOT NULL REFERENCES orders(order_id),
    dish_id INT NOT NULL REFERENCES dishes(dish_id),
    dish_qty SMALLINT NOT NULL,
    PRIMARY KEY(order_id, dish_id)
);

--Insert statements for table: categories
INSERT INTO categories (cat_name, cat_description)
VALUES
  ('Pasta', 'Dishes primarily made with pasta'),
  ('Poultry', 'Dishes made with chicken or turkey'),
  ('Pizza', 'Varieties of pizzas');

--Insert statements for table: chefs
INSERT INTO chefs (chef_name, chef_last_name, chef_speciality, chef_mobile, chef_email, chef_station)
VALUES
  ('John', 'Doe', 'Italian Cuisine', '1234567890', 'john@example.com', 1),
  ('Emma', 'Smith', 'French Cuisine', '9876543210', 'emma@example.com', 2);

--Insert statements for table: ingredients
INSERT INTO ingredients (ingredient_name, ingredient_weight, ingredient_notes)
VALUES
  ('Salt', 0.1, 'Common table salt used for seasoning'),
  ('Pepper', NULL, 'Common spice'),
  ('Garlic', NULL, 'Aromatic bulb'),
  ('Olive Oil', 0.25, 'Healthy cooking oil'),
  ('Tomato', NULL, 'Versatile fruit');

--Insert statements for table: customers
INSERT INTO customers (cust_name, cust_mid_name, cust_surname, cust_addr1, cust_addr2, cust_city, cust_postcode, cust_business_email, cust_personal_email, cust_mobile, cust_landline)
VALUES
  ('Michael', 'David', 'Smith', '123 Main Street', 'Apt 2B', 'Portsmouth', 'PO1 1AA', 'michael@example.com', 'michael.smith@example.com', '0123456789', '0123456789'),
  ('Jennifer', 'Marie', 'Johnson', '456 High Street', NULL, 'London', 'W1 2BC', 'jennifer@example.com', 'jennifer.johnson@example.com', '9876543210', NULL),
  ('Christopher', 'James', 'Brown', '789 Elm Street', NULL, 'Manchester', 'M2 3DE', NULL, 'christopher.brown@example.com', '4567891230', '0123456780');

--Insert statements for table: dishes
INSERT INTO dishes (cat_id, chef_id, dish_name, dish_description)
VALUES
  (1, 1, 'Spaghetti Bolognese', 'Classic Italian pasta dish'),
  (2, 2, 'Coq au Vin', 'Traditional French chicken dish'),
  (3, 1, 'Margherita Pizza', 'Simple and delicious pizza'),
  (1, 2, 'Risotto Milanese', 'Creamy Italian rice dish'),
  (2, 1, 'Beef Bourguignon', 'Rich and flavourful beef stew');

--Insert statements for table: ingredients_dish
INSERT INTO ingredients_dish (ingredient_id, dish_id, ingredient_qty, ingredient_weight)
VALUES
  (1, 1, 2, 0.02),
  (2, 1, 1, NULL),
  (3, 1, 3, NULL),
  (4, 2, 4, 0.7),
  (5, 2, 2, 0.15),
  (3, 2, 2, 0.05),
  (1, 3, 1, 0.01),
  (5, 3, 2, 0.2),
  (4, 4, 3, 0.07),
  (2, 4, 1, 0.03),
  (3, 4, 2, 0.04),
  (1, 5, 4, 0.03);

--Insert statements for table: orders
INSERT INTO orders (cust_id, order_date, order_time)
VALUES
  (1, '2023-07-12', '12:00:00'),
  (2, '2023-07-12', '13:30:00'),
  (3, '2023-07-12', '14:45:00'),
  (1, '2023-07-13', '18:00:00'),
  (2, '2023-07-13', '19:15:00');

--Insert statements for table: order_details
INSERT INTO order_details (order_id, dish_id, dish_qty)
VALUES
  (1, 1, 2),
  (1, 3, 1),
  (2, 2, 3),
  (2, 4, 2),
  (3, 5, 1),
  (3, 1, 2),
  (4, 4, 3),
  (4, 2, 1),
  (5, 3, 4),
  (5, 5, 2);

