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