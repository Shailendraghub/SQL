Drop database employees1;
create database employees1;
use employees1;
create table Customer1 (CustomerId int  Primary key,CustomerName varchar(255));
create table orders1(OrderId int primary key,CustomerId int);
insert into Customer1 values(1,'Alice'),(2,'Bob'),(3,'Charlie'),(4,'David');
insert into orders1 values(101,1),(102,2),(103,1),(104,4);
select * from customer1;
select * from orders1;
select Customer.CustomerId,Customer.CustomerName,orders.OrderId from customer inner join orders on
customer.customerid=orders.customerid;
select Customer.CustomerId,Customer.CustomerName,orders.OrderId from customer left join orders on
customer.customerid=orders.customerid;
select Customer.CustomerId,Customer.CustomerName,orders.OrderId from customer right join orders on
customer.customerid=orders.customerid;
select customer.customerId,customer.customername,orders.orderid from customer cross join orders;
select customer.customerid,customer.customername,orders.orderid from customer natural join orders; 
select customer.* from customer where exists(select  1 from orders where customer.customerid=orders.customerid);
select customer.* from customer where not exists (select 1 from orders where customer.customerid=orders.customerid);
select customer1.customerid,customer2.customername from customer as customer1 inner join customer as customer2 on customer1.customerid=customer2.customerid;



