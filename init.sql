-- PERSON TABLE
-- #1
CREATE TABLE person (  
    id SERIAL PRIMARY KEY, 
    name TEXT,
    age INTEGER,
    height INTEGER,
    city TEXT,
    favorite_color TEXT
);

-- #2
INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES
('Drake', 26, 187, 'Fort Worth', 'Blue' ),
('Chase', 24, 188, 'Chicago', 'Green'),
('Rita', 51, 164, 'Las Colinas', 'Gray'),
('Bryan', 50, 172, 'Las Colinas', 'Red'),
('Alix', 28, 168, 'Watauga', 'Purple')

-- #3
SELECT * FROM person
ORDER BY height ASC;

-- #4
SELECT * FROM person
ORDER BY height DESC;

-- #5
SELECT * FROM person
ORDER BY age DESC;

-- #6
SELECT * from person
WHERE age > 20;

-- #7
SELECT * from person
WHERE age = 18;

-- #8
SELECT * FROM person
WHERE age < 20 OR age > 30;

-- #9
SELECT * FROM person 
WHERE age != 27;

-- #10
SELECT * FROM person 
WHERE favorite_color != 'Red';

-- #11
SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';


-- #12
SELECT * FROM person 
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

-- #13
SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- #14
SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');

-- ORDERS TABLE
 -- #1
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(200),
    product_price NUMERIC,
    quantity INTEGER
);

-- #2
INSERT INTO orders 
(person_id, product_name, product_price, quantity)
VALUES
(1, 'COD', 59.99, 1),
(1, 'Controller', 39.99, 2),
(2, 'Bean Bag Chair', 19.99, 5),
(2, 'Chips Ahoy', 5.99, 2),
(3, 'Doritos', 2.99, 1);

-- #3
SELECT * FROM orders;

-- #4
SELECT SUM(quantity) FROM orders;

-- #5
SELECT SUM(product_price * quantity) FROM orders;

-- #6
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 1;


-- ARTIST TABLE
-- #1
INSERT INTO artist 
(name)
VALUES 
('A Great Big Pile of Leaves'),
('Bad Books'),
('Manchester Orchestra');

-- #2 
SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

-- #3
SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

-- #4
SELECT * FROM artist
WHERE name LIKE 'Black%';

-- #5
SELECT * FROM artist
WHERE name LIKE '%Black%';

-- EMPLOYEE TABLE 
-- #1
SELECT last_name, first_name FROM employee 
WHERE city = 'Calgary'; 

-- #2
SELECT MAX(birth_date) FROM employee;

-- #3
SELECT MIN(birth_date) FROM employee;

-- #4
SELECT * FROM employee
WHERE reports_to = 2;

-- #5
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

-- INVOICE TABLE
-- #1
SELECT COUNT(*) FROM invoice 
WHERE billing_country = 'USA';

-- #2
SELECT MAX(total) FROM invoice;

-- #3 
SELECT MIN(total) FROM invoice;

-- #4
SELECT * FROM invoice
WHERE total > 5;

-- #5
SELECT COUNT(*) FROM invoice
WHERE total < 5;

-- #6
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- #7 
SELECT AVG(total) FROM invoice;

-- #8
SELECT SUM(total) FROM invoice;