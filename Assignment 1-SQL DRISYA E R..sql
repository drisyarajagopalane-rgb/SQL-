Create database Employee;
use employee;

create table departments ( 
    department_ID INT PRIMARY KEY,
    Deparment_name VARCHAR(100)
    );
Create table location (
	location_ID INT PRIMARY KEY,
    location VARCHAR(30)
    );
    
Create table employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender ENUM('M','F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id),
    
    FOREIGN KEY ( location_id)
    REFERENCES location(location_id)
    );
    
SELECT * from Employees;

ALTER TABLE employees ADD email VARCHAR(100);
ALTER TABLE employees MODIFY designation VARCHAR(250);
ALTER TABLE employees DROP COLUMN age;
ALTER TABLE employees RENAME COLUMN hire_date TO `date of joining`;

RENAME TABLE departments TO department_info; 
RENAME TABLE location TO locations;

TRUNCATE TABLE employees;

DROP TABLE employees;
DROP DATABASE employee;

CREATE DATABASE employee;
USE employee;    

CREATE TABLE departments (
     department_id INT PRIMARY KEY,
     department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE location (
      location_id INT AUTO_INCREMENT PRIMARY KEY,
      location_name VARCHAR(100) NOT NULL UNIQUE
      );
      
CREATE TABLE employees (
      employee_id INT PRIMARY KEY
);
ALTER TABLE employees ADD employee_name VARCHAR(100) NOT NULL;
ALTER TABLE employees ADD gender CHAR(1) CHECK (gender IN ('M','F'));
ALTER TABLE employees ADD age INT CHECK (age >= 18);
ALTER TABLE employees ADD hire_date DATE DEFAULT (CURRENT_DATE);
ALTER TABLE employees ADD Deparment_id INT;
ALTER TABLE employees ADD location_id INT;
ALTER TABLE employees ADD FOREIGN KEY (department_id) REFERENCES departments(department_id);    

SELECT * from Employees;
-- spelling mistake happened , instead of department i entered deparment. so using rename

ALTER TABLE employees RENAME COLUMN deparment_id to department_id; 
ALTER TABLE employees ADD FOREIGN KEY (department_id) REFERENCES departments(department_id);  
ALTER TABLE employees ADD FOREIGN KEY (location_id) REFERENCES location(location_id);  