DROP DATABASE IF EXISTS EMPLOYEE123;
CREATE DATABASE EMPLOYEE123;
USE EMPLOYEE123;
DROP TABLE IF EXISTS EMPLOYEESS;
CREATE TABLE EMPLOYEESS(
employeeID INT PRIMARY KEY,
firstname VARCHAR(50),
lastname VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2));
INSERT INTO EMPLOYEESS(employeeID, firstname,lastname, department, salary) VALUES
(1,'David','Davis','HR',70000.00),
(2,'Emma','Evans','IT',80000.00),
(3,'Frank','Foster','Finance',90000.00),
(4,'Grace','Green','IT',85000.00),
(5,'Helen','Harris','Marketing',100000.00),
(6,'Ian','Irwin','Finance',72000.00),
(7,'Jack','Johnson','HR',72000.00);
SELECT * FROM EMPLOYEESS;
SELECT employeeID, firstname, lastname, department, salary,
ROW_NUMBER() OVER(ORDER BY salary DESC) AS rankingofsalary
FROM EMPLOYEESS;

SELECT employeeID, firstname, lastname, department, salary,
ROW_NUMBER() OVER(ORDER BY salary) AS rankingofsalary
FROM EMPLOYEESS;

SELECT employeeID, firstname, lastname, department, salary,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS rankingofsalary
FROM EMPLOYEESS;

SELECT employeeID, firstname, lastname, department, salary,
RANK() OVER(ORDER BY salary DESC) AS rankingofsalary
FROM EMPLOYEESS;

SELECT employeeID, firstname, lastname, department, salary,
RANK() OVER(ORDER BY salary) AS rankingofsalary
FROM EMPLOYEESS;

