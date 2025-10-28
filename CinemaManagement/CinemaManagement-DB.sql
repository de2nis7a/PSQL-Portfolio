--CinemaManagement-DB
CREATE TABLE cinemas(
    cinema_id SERIAL PRIMARY KEY,
    cinema_name VARCHAR(50) NOT NULL UNIQUE,
    location VARCHAR(100) NOT NULL
);

CREATE TABLE screens(
    screen_id SERIAL PRIMARY KEY,
    cinema_id INT NOT NULL,
    screen_date DATE NOT NULL,
    screen_time TIME NOT NULL CHECK(screen_time BETWEEN '8:00' AND '23:00'),
    FOREIGN KEY (cinema_id) REFERENCES cinemas(cinema_id)
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_title VARCHAR(50) NOT NULL,
    genre VARCHAR(50) NOT NULL
);

CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    screen_id INT NOT NULL,
    movie_id INT NOT NULL,
    seat_number INT NOT NULL,
    ticket_price DECIMAL(4,2) CHECK(4.99 < ticket_price),
    FOREIGN KEY (screen_id) REFERENCES screens(screen_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    UNIQUE(seat_number, screen_id)
);

--good inserts 
INSERT INTO cinemas(cinema_name, location)
VALUES
('Cinema A', 'london'),
('Cinema B', 'portsmouth');

--wrong
INSERT INTO cinemas(cinema_name, location)
VALUES
('Cinema A', 'portsmouth');

--good inserts 
INSERT INTO screens(cinema_id, screen_date, screen_time)
VALUES
(1, '2022-11-22', '8:00'),
(1, '2022-11-23', '10:00'),
(2, '2022-11-22', '8:00'),
(2, '2022-11-23', '10:00');

--wrong
INSERT INTO screens(cinema_id, screen_date, screen_time)
VALUES
(3, '2022-12-22', '5:00');

--good inserts 
INSERT INTO movies(movie_title, genre)
VALUES
('A', 'romance'),
('B', 'horror'),
('C', 'comedie');

--good inserts 
INSERT INTO tickets(screen_id, movie_id, seat_number, ticket_price)
VALUES
(1, 1, 5, 11.0),
(1, 2, 7, 14.0),
(2, 1, 1, 11.0),
(2, 2, 13, 11.0),
(2, 3, 24, 14.0);

--wrong
INSERT INTO tickets(screen_id, movie_id, seat_number, ticket_price)
VALUES
(1, 1, 88, 3.99);

--wrong
INSERT INTO tickets(screen_id, movie_id, seat_number, ticket_price)
VALUES
(1, 1, 5, 16.0);



