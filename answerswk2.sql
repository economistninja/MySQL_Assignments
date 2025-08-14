use sakila;
-- q1: Retrieve payment_id, payment_date, and amount from the payment table
SELECT payment_id, payment_date, amount
FROM payment;
-- q2: Rental date, return date, and rental status (simulate 'In Process' by checking return_date IS NULL)
-- Sorted by rental_date DESC
use sakila;
SELECT rental_date, 
       return_date, 
       CASE 
           WHEN return_date IS NULL THEN 'In Process' 
           ELSE 'Completed' 
       END AS rental_status
       from rental
       where rental_date is NULL
ORDER BY rental_date DESC;
-- q3: Q3. first_name, last_name, and email of staff whose username = 'Mike' (simulate Sales Rep)
-- Ordered by staff_id DESC
SELECT first_name, 
       last_name, 
       email
       from staff
       where username = 'Mike'
ORDER BY staff_id DESC; 
-- q4: -- Q4. All columns and records from the store table
SELECT *
FROM store;
-- q5:  title and inventory count from film
-- Sorted by rental_rate ASC and limited to 5 rows
SELECT title, 
       rental_duration as quantityin_stock
       from film
         ORDER BY rental_rate ASC
         limit 5;
