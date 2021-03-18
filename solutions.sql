-- Table - person

-- 1
CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  age INT,
  height INT,
  city VARCHAR(250),
  favorite_color VARCHAR(250)
); 

-- 2
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Michael', 48, 167, 'Scranton', 'green');
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Jim', 30, 186, 'Philidelphia', 'blue');
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Dwight', 32, 185, 'Scranton', 'black');
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Pam', 29, 165, 'New York', 'yellow');
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Kelly', 28, 158, 'Scranton', 'pink');

-- 3
SELECT * FROM person
ORDER BY height DESC;

-- 4
SELECT * FROM person
ORDER BY height;

-- 5
SELECT * FROM person
ORDER BY age DESC;

-- 6
SELECT * FROM person
WHERE age > 20;

-- 7
SELECT * FROM person
WHERE age = 18;

-- 8
SELECT * FROM person
WHERE age < 20 OR age > 30;

-- 9
SELECT * FROM person
WHERE age != 27;

-- 10
SELECT * FROM person
WHERE favorite_color != 'red';

-- 11
SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

-- 12
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- 13
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

-- 14
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');

-- Table - orders

-- 1
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id VARCHAR(250),
  product_name VARCHAR(250),
  product_price INT,
  product_quantity INT
);

-- 2
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES ('michael', 'ice cream', 5, 3);
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES ('michael', 'fake-mustache', 2, 1);
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES ('jim', 'sandwich', 2, 1);
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES ('dwight', 'beets', 1, 100);
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES ('dwight', 'wizard', 300, 1);

-- 3
SELECT * FROM orders;

-- 4
SELECT SUM(quantity)
FROM orders;

-- 5
SELECT SUM(product_price * quantity)
FROM orders;

-- 6
SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 1;

-- Table - artist

-- 1
INSERT INTO artist (name)
VALUES ('John Mayer');
INSERT INTO artist (name)
VALUES ('James Taylor');
INSERT INTO artist (name)
VALUES ('Juke Ross');

-- 2
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

-- 3
SELECT * FROM artist
ORDER BY name
LIMIT 5;

-- 4
SELECT * FROM artist
WHERE name ILIKE 'Black%';

-- 5
SELECT * FROM artist
WHERE name ILIKE '%Black%';

-- Table - employee

-- 1
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

-- 2
SELECT MAX(birth_date) FROM employee

--3
SELECT MIN(birth_date) FROM employee

-- 4
SELECT * FROM employee
WHERE reports_to = 2;

-- 5
SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge'

-- Table - invoice

-- 1
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

-- 2
SELECT MAX(total) FROM invoice;

-- 3
SELECT MIN(total) FROM invoice;

-- 4
SELECT * FROM invoice
WHERE total > 5;

-- 5
SELECT COUNT(*) FROM invoice
WHERE total < 5;

-- 6
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- 7
SELECT AVG(total) FROM invoice;

-- 8
SELECT SUM(total) FROM invoice;