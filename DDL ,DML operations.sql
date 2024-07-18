-- ddl /dml statement(data 
-- dml statement 

use sakila;
create table tushar2(id int,name varchar(20));
insert into tushar2(id,name) values(20,"aman");
insert into tushar2(id,name) values(10,"akshay");
update tushar2 set name="naman" where id=10;
select * from tushar2;

select * from tushar2
where id % 2 !=0;

use sakila;
drop table companies;
create table companies(id int);
insert into companies values(10);
select * from companies;
desc companies;

-- add table columns

alter table companies
add column phone varchar(15);
alter table companies
add column age varchar(15) default 0;
select * from companies;

desc companies;

select * from companies;
alter table companies
add column employee_count3 varchar(20) not null;

select * from companies;

-- rename tables
rename table companies to newcompany1;
select * from companies;
select * from newcompany1;

alter table newcompany1 rename to companies;
select * from newcompany1;
select * from companies;
alter table companies rename column phone to company_name;
select * from companies;

desc companies;

update companies set company_name="regex" where id=10;

desc companies;

update companies set company_name=0;
alter table companies modify company_name int;
select * from companies;
desc companies;

-- change datatype and column name than use change 
alter table companies
change company_name gender char(3);
desc companies;



-- tcl 