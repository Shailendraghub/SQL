DROP DATABASE IF EXISTS EMPLOYEE12345;
CREATE DATABASE EMPLOYEE12345;
USE EMPLOYEE12345;
DROP TABLE IF EXISTS EMPLOYEESS;
CREATE TABLE EMPLOYEESS12345(
employeeID INT PRIMARY KEY,
firstname VARCHAR(50),
lastname VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2));
INSERT INTO EMPLOYEESS12345(employeeID, firstname,lastname, department, salary) VALUES
(1,'David','Davis','HR',70000.00),
(2,'Emma','Evans','IT',80000.00),
(3,'Frank','Foster','Finance',90000.00),
(4,'Grace','Green','IT',85000.00),
(5,'Helen','Harris','Marketing',100000.00),
(6,'Ian','Irwin','Finance',72000.00),
(7,'Jack','Johnson','HR',72000.00);
alter table employeess12345
drop column department;

create table department12345(
employeeid int primary key,
department varchar(50));

insert into department12345(employeeid,department) values(1,'HR'),(2,'SALES'),(3,'FINANCE'),
(4,'MARKETING'),(5,'FINANCE'),(6,'FINANCE'),(7,'IT');

SELECT * FROM department12345;



select * from employeess12345;
-- views (temporary part of the table)
-- readbility 
-- esay accessibility
-- security 

-- create view  viewnames as 
-- select column1,column2....from tablename
-- where condition 1,condition 2...

create view high_salary_employees AS 
select firstname,department from employeess12345
where salary>70000;

select * from high_salary_employees;

select firstname from high_salary_employees where department ='Finance';


--  error bcoz salry column not exist in views this time
select firstname,salary from high_salary_employees;

update high_salary_employees
set department='IT'
where firstname='Frank';

select * from high_salary_employees;

drop view high_salary_employees;

-- USING JOINS WITH VIEW
create view employee_department as 
select e.employeeid,
concat(firstname,' ', lastname)as fullname,
d.department,e.salary
from employee12345 e
join department12345 d
on e.employeeid=d.employyeeid
where salary>70000;














