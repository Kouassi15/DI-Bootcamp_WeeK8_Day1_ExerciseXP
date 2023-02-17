-------1. creation de la base de donnée----
CREATE DATABASE public;
--------2. creation des tables---
CREATE TABLE items(
    id SERIAL PRIMARY KEY,
    name VARCHAR(25) NOT NULL,
    price integer
);
------insertion des données-------
INSERT INTO items(name,price) VALUES ('Small Desk ', 100), ('Large desk', 300),('Fan ', 80);

CREATE TABLE customers(
        id SERIAL PRIMARY KEY,
        firstname VARCHAR(20) NOT NULL,
        lastname VARCHAR(30) NOT NULL
);

INSERT INTO customers(firstname,lastname)
 VALUES('Greg','Jones'),
       ('Sandra' , 'Jones'),
       ('Scott', 'Scott'),
       ('Trevor', 'Green'),
       ('Melanie', 'Johnson');

       -------3 .Use SQL to fetch the following data from the database:-----
       ---1 .All the items
       SELECT *  FROM items;
       ---2.All the items with a price above 80 (80 not included).
       SELECT * FROM items WHERE price > 80;
       ---3.All the items with a price below 300. (300 included)
       SELECT * FROM items WHERE price <= 300;
       ---4. All customers whose last name is ‘Smith’ (What will be your outcome?).
       SELECT * FROM customers WHERE lastname= 'Smith';--le lastname Smith ne figure pas dans notre table
       ---5. All customers whose last name is ‘Jones’.
       SELECT * FROM customers WHERE lastname = 'Jones';
       ---6. All customers whose firstname is not ‘Scott’
       SELECT * FROM customers WHERE firstname != 'Scott'; 




