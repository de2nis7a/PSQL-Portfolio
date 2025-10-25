--CarRentalManagement-DB
CREATE TABLE cars(
    car_id SERIAL PRIMARY KEY,
    car_make VARCHAR(50) NOT NULL,
    car_model VARCHAR(50) NOT NULL,
    car_year VARCHAR(5) NOT NULL,
    car_price DECIMAL(10,2) NOT NULL CHECK(car_price > 100.0)
);

CREATE TABLE customers(
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(50) NOT NULL,
    cust_last_name VARCHAR(50) NOT NULL,
    cust_email VARCHAR(150) NOT NULL UNIQUE,
    cust_phone VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE rentals(
    rental_id SERIAL PRIMARY KEY,
    car_id INT NOT NULL,
    cust_id INT NOT NULL,
    rental_start_date DATE NOT NULL,
    rental_end_date DATE,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    FOREIGN KEY (cust_id) REFERENCES customers(cust_id),
    CHECK(rental_start_date < rental_end_date)
);

CREATE TABLE rental_payments(
    payment_id SERIAL PRIMARY KEY,
    rental_id INT NOT NULL,
    payment_date DATE NOT NULL,
    payment_amount DECIMAL(8,2) NOT NULL CHECK(19.99 <= payment_amount),
    FOREIGN KEY (rental_id) REFERENCES rentals(rental_id)
);

CREATE TABLE rental_reviews(
    review_id SERIAL PRIMARY KEY,
    rental_id INT NOT NULL,
    rating SMALLINT NOT NULL CHECK(rating BETWEEN 1 AND 5),
    comment VARCHAR(50),
    FOREIGN KEY (rental_id) REFERENCES rentals(rental_id)
);

INSERT INTO cars(car_make, car_model, car_year, car_price) 
VALUES
('asnx', 'ascv', '2000', 2000.0),
('xvvsd', 'srgsr', '2009', 4000.0),
('sndn', 'srbsd', '2001', 3000.0),
('wef', 'wevcwv', '2010', 4000.0),
('srbg', 'ergerg', '2005', 3000.0);

--wrong
INSERT INTO cars(car_make, car_model, car_year, car_price) 
VALUES
('aefse', 'wefwef', '1999', 10.0);

INSERT INTO customers(cust_name, cust_last_name, cust_email, cust_phone) 
VALUES
('vbnm', 'dfgh', 'cevcuy@gmail.com', '45678'),
('dgs', 'dfrhrhgh', 'cergey@gmail.com', '76535'),
('tyjtyj', 'yjtyj', 'fsvgg@gmail.com', '67856');

--wrong
INSERT INTO customers(cust_name, cust_last_name, cust_email, cust_phone) 
VALUES
('xfb', 'srgs', 'sgsbrg@gmail.com', '45678');


INSERT INTO rentals(car_id, cust_id, rental_start_date, rental_end_date)
VALUES
(1, 1, '2022-11-23', '2023-02-28'),
(2, 1, '2022-07-17', '2023-11-28'),
(3, 2, '2022-01-03', '2023-12-28'),
(4, 2, '2022-11-23', '2023-02-11'),
(5, 3, '2022-02-17', '2023-02-18');


--wrong
INSERT INTO rentals(car_id, cust_id, rental_start_date, rental_end_date)
VALUES
(4, 3, '2023-12-01', '2023-09-01');

INSERT INTO rental_payments(rental_id, payment_date, payment_amount)
VALUES
(1, '2022-11-23', 1240.0),
(2, '2022-07-17', 3882.0),
(3, '2022-01-03', 1378.0),
(4, '2022-11-23', 812.0),
(5, '2022-02-17', 1232.0);

--wrong
INSERT INTO rental_payments(rental_id, payment_date, payment_amount)
VALUES
(1, '2022-03-23', 1.0);

INSERT INTO rental_reviews(rental_id, rating, comment)
VALUES
(1, 4 ,'Acceptable'),
(2, 5 , NULL),
(3, 5 , NULL),
(4, 5 , 'Very good'),
(5, 5 , NULL);

--wrong
INSERT INTO rental_reviews(rental_id, rating, comment)
VALUES
(4, 0 ,'Acceptable');



