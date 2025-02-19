create database new;
use new;
create table if not exists users
(
	id int unsigned,
    name varchar(100) ,
    email varchar(150), 
    password varchar(100),
    contact varchar(20),
    address text,
    dob date,
    gender enum("M","F","O"),
    status boolean
);

show tables;

select * from users;
insert into users( id,name,email,password,contact,address,dob,gender,status)
values (1,"john","john@gmail.com","123456","9876543212","delhi","1991-01-10","M",1);

select * from users;
drop table users;

create table users
(
	id int unsigned,
    name varchar(100),
    email varchar(150),
    password varchar(150),
    contact varchar(45),
    address text,
    dob date,
    gender enum("M","F","O"),
    status boolean
);
insert into users(id,name,email,password,contact,address,dob,gender,status)
values(2,"janny","jannt@gmail.com","12345","9876543212","jodhpur, rajasthan","1991-01-10","F",1),
(3,"bhagirath","bhagirath@gmail.com","12345","9876543212", "rajasthan","1998-01-10","M",1);

# third way to insert values (ydi aap sare rows ko fill kr rhe h to ..without using column names
insert into users values(2,"janny","jannt@gmail.com","12345","9876543212","jodhpur, rajasthan","1991-01-10","F",1),
(3,"bhagirath","bhagirath@gmail.com","12345","9876543212", "rajasthan","1998-01-10","M");
select * from users;



