-- 1 List everyone from texas
SELECT first_name, last_name
FROm customer
JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas';

-- 2 get all payments above 6.99 with the customers full Name
SELECT first_name, last_name, payment_id, amount
FROM customer
JOIN payment 
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99;


-- 3 List all first_name, last_name for customers that have made over 4 payments
SELECT customer_id, first_name, last_name
FROM customer
WHERE customer_id IN(
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING COUNT(amount) > 4
	);
	
-- 4
SELECT first_name, last_name
FROM customer
JOIN address
ON customer.address_id = address.address_id
JOIN city
ON address.city_id = city.city_id
JOIN country
ON city.country_id = country.country_id
WHERE country = 'Nepal';

-- 5
SELECT first_name, last_name, COUNT(rental.staff_id)
FROM staff
JOIN rental
ON staff.staff_id = rental.staff_id
GROUP BY staff.staff_id
ORDER BY COUNT(rental.staff_id) DESC;

-- 6 which movie title(s) has been rented the most?
SELECT title, COUNT(rental_id)
FROM film
JOIN inventory
ON film.film_id = inventory.film_id
JOIN rental
ON inventory.inventory_id = rental.inventory_id
GROUP BY title
ORDER BY COUNT(rental_id) DESC;


-- 7 
SELECT first_name, last_name
FROM customer
WHERE customer_id IN(
	SELECT customer_id
	FROM payment
	WHERE amount > 6.99
	GROUP BY customer_id
	HAVING COUNT(amount) = 1
);

-- Which employee gave the most free rentals
SELECT first_name, last_name, COUNT(amount), amount
FROM staff
JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY staff.first_name, staff.last_name, payment.amount
ORDER BY amount;















	