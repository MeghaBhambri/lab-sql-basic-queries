--- Use the sakila database to do the following tasks:

--- 1. Show all tables

USE sakila;
SHOW tables;
-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM FILM;
SELECT * FROM  CUSTOMER;

-- 3. Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
SELECT title FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language
FROM language;

-- 3.3  List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- 4.Retrieve unique release years.
SELECT DISTINCT (release_year) FROM film;

-- 5.Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(store_id) FROM store;

-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(rental_id) from rental;
SELECT COUNT(film_id) FROM inventory;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT (last_name)) AS ddistinct_last_names FROM actor;

-- 6. Retrieve the 10 longest films.
SELECT title, length FROM film
order by length desc limit 10;

-- 7.Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * from actor
WHERE first_name = "SCARLETT";

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film
WHERE title LIKE "%ARMAGEDDON%" and length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content.
SELECT * FROM film
WHERE special_features LIKE "%behind the scenes%";

