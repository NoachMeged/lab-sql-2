-- Select all the actors with the first name ‘Scarlett’
select first_name from actor;

-- Select all the actors with the last name ‘Johansson’.
select last_name from actor;

-- How many films (movies) are available for rent?
select count(inventory_id) from sakila.inventory;

-- How many films have been rented?
select count(rental_ID) from sakila.rental;

-- What is the shortest and longest rental period?
select max(rental_duration) from film;

-- What is the shortest and longest rental period?
select min(rental_duration) from film;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length) as min_duration from film;
select max(length) as max_duration from film;

-- What's the average movie duration?
SELECT AVG(length) AS average_value from film;

-- What's the average movie duration expressed in format (hours, minutes)?
select
   AVG(length) AS average_length_minutes,
    AVG(length) DIV 60 AS average_hours,
    AVG(length) % 60 AS average_minutes
FROM film;
-- How many movies longer than 3 hours?
SELECT count(length) > 180 from film; 

-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT
  CONCAT(first_name, ' ', UPPER(last_name), ' - ', LOWER(email)) AS formatted_data
FROM
  customer;
  
-- What's the length of the longest film title?
SELECT MAX(LENGTH(title)) AS longest_title_length
FROM film;
