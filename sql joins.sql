use sakila;
select *from payment;
select payment_id ,customer_id from payment 
where payment_id =2 or payment_id=3;
select max(amount) from payment where customer_id=2;
select min(amount),avg(amount) from payment where customer_id=3;
select customer_id ,count(*),max(amount) from payment group by customer_id;
select customer_id,count(*) from payment where customer_id>4 
group  by customer_id having count(*)>30;

select amount,count(amount) from payment where amount>5 group  by amount;

create table product1(pid int,pname varchar(20));
insert into product1 values (10,"mobile"),(20,"tv"),(30,"laptop"),(40,"gyser");
create table orders1(oid int, city varchar(20), pid int);
insert into orders1 values(101,"Jaipur",10),(102,"Goa",20),
	(103,"mumbai",10),(104,"japan",50);
select * from product1;


select *from orders1;

# cross join (total number of product)

select o.oid,o.city,o.pid,p.pname from orders1 as o
join product1 as p;

select o.oid,o.city,o.pid,p.pname from orders1 as o
join product1 as p where o.pid=p.pid;

#not use in natural join ..it is wrost join bcoz in this join not use in where condition,it is same as inner join ...it as act a cross join...


#self join 

#subquery

select *from payment where amount=(select amount from payment where payment_id=3);

#second highest 
select * from payment where amount<(select max(amount) from payment);


drop table employees;
create table employees (id int primary key auto_increment,dept varchar(20),salary int);
insert into employees(dept,salary) values ("hr",200),
("hr",300),("hr",100),
("marketing",70),("marketing",50),
("marketing",200),("marketing",400),
("dsa",150),("dsa",120),
("dsa",40),("dsa",90),("dsa",500);
select * from employees;

select dept,salary,sum(salary)

#partition by - similar values ko collect krna 

select dept,salary,sum(salary) over(),sum(salary) over (partition by dept) from employees;

#runnig sum=-- current location se count krna
select dept,salary,sum(salary) over (order by salary)
from employees;

#rank-- kuch rank dena ,skip krta h
#denserank -rank dena ,skip nhi krta

select dept,salary,rank() over (order by salary)
from employees;


select dept,salary,dense_rank() over (order by salary)
from employees;


select dept,salary,dense_rank() over (order by salary)
from employees;

select dept,salary,rank() over(partition by 


select * from 
(select dept,salary,
     rank() over (order by salary desc) as "n1" from employees) as abc where n1=4;




create database regex1;
use regex1;
create table xyz(id int);
insert into xyz values(20899);
select * from xyz;

--- ddl---
create table employee1(eid int unsigned);
insert into employee1 values(2323343);
select * from employee1;

#byte int-- tine int -1
#small int -2
#medium int -3
#int -4
#big int -8
#

create table abc(salary double(5,2)); 
insert into abc values(20.1);
select * from abc;
insert into abc values(120.343433);


create table test_tool;
create table test_tool(i bool);
insert into test_tool values(True),(false);
select * from test_tool;

# jab hum char ki baat krte h to ye last ke space ko hta deta h ..
# char is a fixed sized data 
# varchar is a varible lenght argument. 


-- # get the payment_id,customer_id ,amount,month of payment data and
-- qautrer of [ayemnet data with the foloowig increment in the amount:
-- agar amount mera 2 $ amount increse 10%
-- if amount greter 5 amunt oncrese 25%
-- 8 se jyda to amiubt increse 50%
-- brna 60 %

select * from payment;


SELECT payment_id,customer_id,amount,
    TO_CHAR(payment_date, 'Month') AS payment_month, 
    CASE 
        WHEN amount <= 2 THEN amount * 1.10 
        WHEN amount > 8 THEN amount * 1.50  
        WHEN amount > 5 THEN amount * 1.25   
        ELSE amount * 1.60                   
     END AS updated_amount,
    CASE 
        WHEN EXTRACT(MONTH FROM payment_date) IN (1, 2, 3) THEN 'Q1'
        WHEN EXTRACT(MONTH FROM payment_date) IN (4, 5, 6) THEN 'Q2'
        WHEN EXTRACT(MONTH FROM payment_date) IN (7, 8, 9) THEN 'Q3'
        ELSE 'Q4'
    END AS payment_quarter
FROM 
    payment;


--- what is order of exection in sql??
--- primary key ,super key,candidate key, foregin key
--- types of relationship in sql?
--- what are co-related subquery???

create database regex;
use regex;
create table product(pid int, pname varchar(20),price int);
insert into product values (10,"tv",100),(20,"mobile",200),(30,"gyser",4000),(40,"yash",5000);
select * from product;

create table orders (oid int,city varchar(20),product_id int);
insert into orders values (1991,"jaipur",10),(1992,"goa",20),(1993,"uk",10),(1994,"shimla",40),(1995,"kerala:",80);
select * from orders;
select * from product;

-- first way 
select o.oid,o.city ,o.product_id,p.pname,p.price from orders as o join product as p
where o.product_id = p.pid;


--  what is  cartision join or cross join???
-- all the possible combination phli tabe ka first table dursi table ke record se match krega
--  called cartision join or cross join.


-- second way 
select o.oid,o.city ,o.product_id,p.pname,p.price from orders as o inner join product as p
on o.product_id = p.pid;

-- join se phle left bad me right

-- left join

select * from orders;
select * from product;
select o.oid,o.city ,o.product_id,p.pname,p.price from orders as o left join product as p
on o.product_id = p.pid;


-- right join 
select o.oid,o.city ,o.product_id,p.pname,p.price from orders as o right join product as p
on o.product_id = p.pid;


use sakila;
select * from actor;
select * from film_actor;

-- get the actor_id the full name of a actor , 
-- the film_id  and the last update colum from those tables.

select a.actor_id,a. ,o.first_name,a.last_name ,f.film_id, from orders as o inner join product as p
on o.product_id = p.pid;

select actor_id, concat_ws('-', first_name,last_name) as full_name ;












-- what is self join and how it is different from outer joins??
-- what are constraints and why we use it??
-- what is the difference between joins and set operations...

-- hacker rank solve - 3 star 
-- sql zooo chap- 1,2,3,5,

create database regex;
use regex;
create table employee(eid int, ename varchar(20),
manager_id int);
insert into employee values (10,"aman",null),
(20,"akshay",30),(30,"naina",10),(40,"abhishek",30);

select * from employee;

select emp.eid,emp.ename,emp.manager_id,mgr.eid,mgr.ename from employee as emp join employee as mgr 
where emp.manager_id=mgr.eid;

select * from orders;
select * from product;

-- natural join - data ko collect ,no condition use columnn same -corss join,column not same - inner join
-- rename ke liye (alter table orders rename column product_id to pid)... 

select * from orders natural join product;


-- constraints 
-- not null - it means data not be null ..
drop table test;
create table test(eid int not null);
insert into test values(200);
insert into test values(null);
select * from test;


-- unique -- not insert same values --multiple null value dal skte h but values same na ho ..

create table test1(eid int unique);
insert into test1 values(200);
insert into test1 values(null);
insert into test1 values(200);
insert into test1 values(300);

select * from test1;

drop table test2;
create table test2(eid int default 0, name varchar(20));

INSERT INTO test2 (eid, name)
VALUES (100, 'aman');

insert into test2 values(null);


-- is null - comparision operator 


select * from test2 where eid is null;

-- primary key--  uniue ,,not null... auto -increment-- by default auto increment id value either you insert into any data ,auto increment me null dal skte h par bo agli vali value me increment kr dega..

drop table test3;
create table test3(eid int primary key auto_increment,name varchar(20));
insert into test3(eid,name) values(100,"aman");
insert into test3(name) values("aman");

insert into test3(eid,name) values(null,"aman");



select * from test3;

-- check-- condition ke according  reuslt dena 

create table test4(eid int check (eid>10),name varchar(20));
insert into test4(eid,name) values(100,"aman");
insert into test4(eid,name) values(9,"aman");


select * from test4;


-- second way to use constarints-- constarint ka name dena -- jisse identify krna easy ko kis bajah se error aayi ..

create table test5(eid int,name varchar(20),
constraint regex_test_eid_chk check(eid>10));
insert into test5(eid,name) values(100,"aman");
insert into test4(eid,name) values(9,"aman");
insert into test4(eid,name) values(5,"aman");
select * from test5;


drop table test5;
create table test5(eid int,name varchar(20),
constraint regex_test_eid_chk check(eid>10),
constraint regex_name_uk unique(name));
insert into test5(eid,name) values(100,"aman");
insert into test5(eid,name) values(9,"aman");
insert into test5(eid,name) values(5,"aman");
insert into test5(eid,name) values(90,"aman");

insert into test5(eid,name) values(500,"abman");

select * from test5;

-- foregin key constrints-- 

create database regexconst;
use regexconst;
select * from product;

create table product (pid int primary key,
pname varchar(20),price int);
insert into product values (10,"tv",100),(20,"mobile",200),(30,"gyser",4000),(40,"yash",5000);
select*from product;

create table orders (oid int,city varchar(20),product_id int,foreign key (product_id) references product(pid));

insert into orders values(1991,"jaipur",10),(19912,"goa",20),(1993,"UK",10),(1994,"shimla",40);
-- give error bcz 60 is not matched in parent (product) table...

insert into orders values(1995,"laptop",60);

select *from orders;

-- DDL -- Data Defination Language -- 
-- Create 
-- Drop 
-- truncate-
-- alter 

-- create 

create table test(id int,name1 varchar(20));
insert into test values (10,"tushar");
insert into test values ("tushar"); -- error -- because test take two aruments 

insert into test(name1) values ("tushar");
insert into test values (20,"ram");

select * from test;-- insert  -- dml operation 

-- update -- dml operation -data change 
-- ddl - data ke structure chnage 

update test set name1='XYZ' where id =10;
select * from test;

-- delete

delete from test where id is null;
select * from test;

-- drop -- data and structure both will be delete 
drop table test;

-- truncate -- ddl-- structure not delete,data delete-  recreate structure(ddl operation)

select * from test;
truncate test;
select *from test;

-- alter 

use regexconst;
create table companies(id int);
insert into companies values(10);
select * from companies;
-- add column -alter add columns
alter table companies
add column phone varchar(15);
select * from companies;

-- 
alter table companies 
add column employee_count3 int not null;
select * from companies;

-- table column delete -drop

alter table companies drop column employee_count3;
select * from companies;

-- rename tables

rename table companies to newcompany1;
select * from companies;
select * from newcompany1;

alter table newcompany1  rename to companies;
select * from companies;

desc companies;

-- column name change 
alter table companies
rename column id to ids;
select *from companies;

desc companies;
alter table companies
add constraint primary key(ids);

insert into companies values(12);

-- drop primary key 

alter table companies 
add constraint regex_company_uk unique(ids);
select * from companies;


-- change the data type 
desc companies;


alter table companies modify ids double;
select * from companies;

desc companies;

-- change 

alter table companies
change ids newids varchar(6);
desc companies;

--  differnce between drop ,delete and truncate??

-- delete - dml operation -- jisme hum where condition dete h ,undo the operation (rollback). 
-- drop -- ddl operation - delete the both table data and structure both , not the rollback (not undo)..
-- truncate -- ddl operarion -- jo aapke drop the table or strcture ko dleete krta h ,, or table ke strcture ko recarte krta h .. isme rollback nho hota ..


-- tcl 
s
-- to find the second highest salry from 

use sakila;
select * from payment;
select max(amount) from payment ;
select max(amount) from payment where amount<11.99;

select max(amount) from payment where amount< (select max(amount) from payment);

-- leetcode 