create table products1(pid int, pname varchar(20));
insert into products1(pid, pname)
values(10,"mobile"),(11,"apple"), (12, "TV");
select * from products1;

-- check  ==>condition according 

create table yash (id int check(id>5));
insert into yash values(10);
select * from yash;

create table yash2 (name varchar(20) check(name=reverse(name) ) ) ;
insert into yash2 values("naman");
select * from yash2;

use sakila;
show tables;
select * from actor;
select *from film_actor;
desc film_actor;

select actor.actor_id,actor.first_name,film_actor.actor_id,film_actor.film_id
from actor join film_actor
where(actor.actor_id=film_actor.actor_id);

desc film_actor;
select * from film;

select film_actor.film_id,film.title
from actor join film_actor
where(film_actor.film_id,film.title);

select film_actor.film_id, film.title
from actor, film_actor, film
where film_actor.film_id = film.film_id;

show tables;

select a.actor_id,fa.film_id
from actor as a join film_actor as fa
where(a.actor_id=fa.actor_id);

select a.actor_id,fa.film_id,film.title
from actor as a join film_actor as fa 
join film
where(a.actor_id=fa.actor_id) and (fa.film_id =film.film_id);






