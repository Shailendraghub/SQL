use sakila;
select ac.actor_id,count(*)
from actor as ac join film_actor as fa
where(ac.actor_id=fa.actor_id)
group by actor_id;

-- self join 

create table regex_emp(id int,name varchar(20),mid int);
insert into regex_emp values(1,"tushar",null),
(2,"abhishek",3),(3,"naina",1),(4,"shyam",2);

select * from regex_emp;

select emp.id ,emp.name,emp.mid,manager.name
from regex_emp as emp join 
regex_emp as manager 
where(emp.mid=manager.id);