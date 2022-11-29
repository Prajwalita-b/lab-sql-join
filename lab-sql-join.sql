use sakila;
select fc.category_id, name, count(film_id) from film_category fc
join category c on fc.category_id = c.category_id
group by fc.category_id; -- Q1

select first_name, last_name, a.address from staff s
join address a using(address_id); -- Q2

select first_name, last_name, payment_date, sum(amount) from payment p
join staff s using(staff_id)
where date_format(convert(payment_date,date),'%Y %M') = '2005 August' 
group by s.staff_id; -- Q3

select film_id, title, count(actor_id) from film_actor fa
join film f using(film_id)
group by film_id; -- Q4

select first_name, last_name, sum(amount) from payment p
join customer c using(customer_id)
group by c.customer_id
order by last_name; -- Q5