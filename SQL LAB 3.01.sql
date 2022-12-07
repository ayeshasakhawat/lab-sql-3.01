USE sakila;

-- Drop column picture from staff.
SELECT * FROM staff;

ALTER TABLE staff
DROP COLUMN picture;

-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

SELECT * FROM customer;
SELECT * FROM staff;

select * from staff
where first_name = 'Tammy';

INSERT INTO staff(first_name, last_name, address_id, email, store_id, active, username)
VALUES ('TAMMY','SANDERS','79','TAMMY.SANDERS@sakilacustomer.org','1','1','Tammy');
-- **************************************************************************************


-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
-- You can use current date for the rental_date column in the rental table. 
-- Hint: Check the columns in the table rental and see what information you would need to add there.

--  You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select * from rental
where customer_id = '130';


select * 
from film
join inventory using(film_id)
where title = 'ACADEMY DINOSAUR';

SELECT current_timestamp();

insert into rental( rental_date, inventory_id, customer_id, return_date, staff_id)
values (current_timestamp(),1,130,current_timestamp(),1);

-- *****************************************************************************************
