--ECommerceManagement-DB
CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone_number VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(6,2) NOT NULL CHECK(total_amount > 0),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE products(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    price DECIMAL(5,2) NOT NULL CHECK(price > 0)
);

CREATE TABLE order_items(
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL CHECK(quantity > 0),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    PRIMARY KEY(order_id, product_id)
);

--good inserts
INSERT INTO customers(customer_name, email, phone_number)
VALUES 
('asd', 'bdcb@gmail.com', '4567890'), 
('vf', 'adcw@gmail.com', '67892132');

--wrong insert
INSERT INTO customers(customer_name, email, phone_number)
VALUES 
('d', 'adcw@gmail.com', '4567890');

--good inserts
INSERT INTO orders(customer_id, order_date, total_amount)
VALUES
(1, '2022-11-23', 230.00),
(1, '2023-02-23', 200.00),
(2, '2023-04-12', 330.00);

--wrong insert
INSERT INTO orders(customer_id, order_date, total_amount)
VALUES
(3, '2021-11-23', 0.00);

--good inserts
INSERT INTO products(product_name, price)
VALUES
('sd', 100.00),
('dewf', 30.00);

--wrong insert
INSERT INTO products(product_name, price)
VALUES
('C', 0.00);

--good inserts
INSERT INTO order_items(order_id, product_id, quantity)
VALUES
(1, 1, 2),
(1, 2, 1),
(2, 1, 2),
(3, 1, 3),
(3, 2, 1);

--wrong insert
INSERT INTO order_items(order_id, product_id, quantity)
VALUES
(2, 1, 0);


