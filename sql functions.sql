use sakila;
-- pseduo columns
select curdate(),current_time(),current_timestamp() from dual;
select now() from dual;
select now(),
month(now() ),date_format(now() ,'year is %Y');
select now();

select *from payment;
-- multirow function 
select sum(amount) from payment;
select max(amount) from payment;
select min(amount) from payment;
select avg(amount) from payment;

select count(customer_id) from payment;

select count(*) from payment;

select distinct(customer_id) from payment;
select count(distinct(customer_id)) from payment;

select distinct(customer_id) from payment;

select customer_id,count(*) from payment
group by customer_id;


--  har ek customer_id ka max min avg chahiye 
--  ye pta lgaana h every month what is the total paymemt 
--  get the total amount only for those payment whre payment_id is in between 3 to 300 and make sure the customer_id should  4 not include.
-- from the address table i need to found out the top 3 district by count.

select min(customer_id),max(customer_id),avg(customer_id)from payment;

select *from payment;
Select sum(amount) from payment where payment_id between 3 and 300 and customer_id != 4;
select *from address;
select *from payment;











