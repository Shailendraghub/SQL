DROP DATABASE IF EXISTS employees_db;
create database employees_db;
use employees_db;
drop table employees;
create table employees (
   id INT PRIMARY KEY,
    name VARCHAR(40),
    position VARCHAR(40),
    salary DECIMAL(10, 2),
    hire_date DATE,
    dep_id INT,
    manager_id INT
);
insert into  employees (id, name, position, salary, hire_date, dep_id, manager_id) VALUES
(1, 'Alice Smith', 'Software Engineer', 75000.00, '2023-01-15', 101, NULL),
(2, 'Bob Johnson ', 'Data Scientist', 80000.00, '2023-03-22', 102, 1),
(3, 'Charlie Brown', 'HR Manager', 72000.00, '2023-02-10', 103, NULL),
(4, 'Diana Prince', 'Software Engineer', 77000.00, '2023-04-05', 101, 1),
(5, 'Evan Scott', 'Marketing Specialist', 69000.00, '2023-05-20', 104, 3);
select * from employees;

-- Retrieve all details of employees from the employees table.
select * from employees;

-- Find all employees with a salary greater than $75,000.

select * from employees where salary > 75000;

-- List the names and positions of all employees.

select name, position from employees;

-- Retrieve all employees sorted by their salary in descending order.

select name, salary from employees order by salary desc;

-- Increase the salary of the employee with id 1 by 5%.

update employees set salary = salary * 1.05 where id = 1;
select * from employees;

-- Delete the employee with id 2 from the table.

delete from employees where id = 2;
select * from employees;

-- Add a new column called department to the employees

alter table employees add department varchar(20);
select * from employees;

-- Change the data type of the salary column to DECIMAL(12, 2).

alter table employees modify salary decimal(12, 2);
select * from employees;

-- Remove the department column from the employees table.

alter table employees drop column department;
select * from employees;

-- Retrieve the names and salaries of employees hired after January 1, 2023, with salaries greater than $75,000.

select name, salary from employees where hire_date > '2023-01-01' AND salary > 75000.00;

-- Find the total number of employees in the table.

select count(*) from employees;

-- Find the maximum, minimum, and average salary in the employees table.

select max(Salary),min(Salary),avg(salary) from employees;


-- Count the number of employees who hold the position of Software Engineer.

select count(*) from employees where position = 'Software Engineer';

-- List all unique job positions in the employees table.

select distinct position from employees;




select * from employees;











