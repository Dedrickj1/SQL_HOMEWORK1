--1. How many actors are there with the last name ‘Wahlberg’?
select first_name, last_name
from actor
where last_name like 'Wahlberg';
--Answer - 2

--2. How many payments were made between $3.99 and $5.99?
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- Answer - 2

--3. What film does the store have the most of? (search in inventory)
select film_id, count (film_id) as Frequency
from inventory 
group by film_id 
order by count(film_id) desc
limit 1;
-- Answer - film id - 350 frequency - 8

--4. How many customers have the last name ‘William’?
select first_name, last_name
from customers
where last_name = 'William';
-- Answer is 0

--5. What store employee (get the id) sold the most rentals?
select staff_id, count(inventory_id)as frequency
from rental
group by staff_id 
order by count(inventory_id) desc 
limit 1;
--Answer is Staff_id 1


--6. How many different district names are there?
--Info which data table should i use to find the answer
--i couldnt find the specific table i should be looking
--in to find the answer




--7. What film has the most actors in it? (use film_actor table and get film_id)
select * from film_actor;
select film_id, count(film_actor) as frequency
from film_actor
group by film_id 
order by count(actor_id) desc limit 1;
--Answer is film_id 508 frequency is 15



--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

select * from customer
where right(last_name,2)=
'es';
--Answer after using Right(function) is 21

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(*) 
FROM payment
WHERE customer_id BETWEEN 380 AND 430
and amount in (4.99, 5.99)
GROUP BY amount
HAVING COUNT(*) > 250;
--Answer after using count is 0. it returned nothing



--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
select rating,count (rating) as frequency
from film
group by rating 
order by count (rating) desc 
--Answer after using count is PG-13. PG-13 has the most movie rating at 224


