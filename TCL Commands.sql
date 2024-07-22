-- TCL Commands -
create table yash123(id int);
insert into yash123 value(200);
select * from yash123;
commit;

create table yash123(id int);
insert into yash123 value(200123);
update yash123 set id=99;
select * from yash123;
rollback;


select * from yash123;

create table yash123(id int);
insert into yash123 value(1000);
select * from yash123;
rollback;

create table yash123(id int);
insert into yash123 value(19);
insert into yash123 value(20);
savepoint new_yash;
insert into yash123 values(21);
insert into yash123 values(22);
insert into yash123 values(23);
select * from yash123;
rollback to new_yash;
select * from yash123;





