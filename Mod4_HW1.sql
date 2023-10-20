


--Question #1: There are 2 actors with the last name Wahlberg.

select count(last_name),last_name
from actor
where last_name = 'Wahlberg'
group by last_name;




--Question #2: There are no payments made between $3.99 and $5.99 

select count(amount), amount
from payment 
where amount between 3.99 and 5.99
group by amount;




--Question #3: There are as high as 8 films for per movie in the store.

select count(film_id), film_id
from inventory
group by film_id
order by count(film_id) desc;




--Question #4: There is 1 customer with the last name William

select count(last_name),last_name
from Customer
where last_name = 'Williams'
group by last_name;




--Question #5: Mike, staff_id 1, has the most sold rentals at 8,040 movies.

select count(staff_id), staff_id
from rental
group by staff_id;




--Question #6: There are 378 different district names there.

select count(distinct district), district
from address
group by district;




--Question #7: Lambs Cincinatti has the most actors in it with 15 different actors total.

select count(distinct actor_id), film_id
from film_actor
group by film_id
order by count(distinct actor_id) desc;



--Question #8: There are 13 customers in store_id 1 that last name's end in 'es'.

select count(store_id), store_id, last_name
from customer
WHERE store_id = 1 and last_name LIKE '%es'
group by store_id, last_name;




--Question #9: There are no payment amounts above $250 for customer ids  between 380 and 430

select amount, customer_id
from payment 
where amount > 250 and (customer_id between 380 and 430)
group by amount, customer_id;




--Question #10: There are 5 rating categories and PG-13 has the most movies total at 224 movies. 

select count(distinct rating), rating
from film
group by rating;

select count(distinct description), rating
from film
group by rating
order by count(distinct description) asc;





