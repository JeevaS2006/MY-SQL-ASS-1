DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE IF NOT EXISTS employee_db;
USE employee_db;
CREATE TABLE IF NOT EXISTS departments (
department_id INT PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS location (
location_id INT PRIMARY KEY AUTO_INCREMENT,
location_name VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS employees (
employee_id INT PRIMARY KEY AUTO_INCREMENT,
employee_name VARCHAR(100),
gender ENUM('male','female','others'),
age INT CHECK (age BETWEEN 20 AND 50),
hire_date DATE,
designation VARCHAR(100),
salary INT,
department_id INT,
location_id INT,
FOREIGN KEY (department_id) REFERENCES departments(department_id),
FOREIGN KEY (location_id) REFERENCES location(location_id)
);
INSERT INTO departments(department_name)
VALUES('sales'),('finance'),('hr'),('marketing');
SELECT * FROM departments;

INSERT INTO location(location_name)
VALUES('Chennai'),('Bangalore'),('Mumbai'),('Hyderabad');
SELECT * FROM location;

INSERT INTO employees
(employee_name, gender, age, hire_date, designation, salary, department_id, location_id)
VALUES
('Jeeva', 'male', 22, '2025-01-10', 'Data Analyst', 30000, 1, 1),
('Subash', 'male', 23, '2024-05-15', 'Software Developer', 40000, 2, 2),
('Siva', 'male', 24, '2023-08-20', 'HR Manager', 35000, 3, 3),
('Sundhar', 'male', 25, '2025-02-12', 'Marketing Executive', 28000, 4, 4),
('Makibalan', 'male', 23, '2024-11-05', 'Web Developer', 32000, 1, 1);

DESC EMPLOYEES;
SELECT * FROM EMPLOYEES;

/* ALTER TABLES */
ALTER TABLE employees ADD COLUMN email VARCHAR(100) UNIQUE;
ALTER TABLE employees MODIFY COLUMN designation VARCHAR(200);
ALTER TABLE employees DROP COLUMN age;
ALTER TABLE employees RENAME COLUMN hire_date TO date_of_joining;

/* RENAMENING THE TBALES*/
RENAME TABLE departments TO department_info;
RENAME TABLE location TO locations;
DESC employees;
DESC department_info;
DESC locations;
RENAME TABLE LOCATION TO LOCATIONS;

/* TRUNCATE*/
TRUNCATE TABLE employees;
/*DROP TABLE*/
DROP TABLE employees;
DROP DATABASE employee_db;




/* CONSTRAINTS */


DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;
SELECT DATABASE();
CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE locations (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE employees (
employee_id INT PRIMARY KEY AUTO_INCREMENT,
employee_name VARCHAR(100) NOT NULL,
gender ENUM('M','F'),
age INT CHECK (age >= 18),
hire_date DATE DEFAULT (CURRENT_DATE),
designation VARCHAR(200),
salary INT,
department_id INT,
location_id INT,
FOREIGN KEY (department_id) REFERENCES departments(department_id),
FOREIGN KEY (location_id) REFERENCES locations(location_id)
);
SHOW TABLES;
INSERT INTO departments (department_name)
VALUES
('Sales'),
('Finance'),
('HR'),
('Marketing');
INSERT INTO locations (location_name)
VALUES
('Chennai'),
('Bangalore'),
('Mumbai'),
('Hyderabad');
INSERT INTO employees
(employee_name, gender, age, designation, salary, department_id, location_id)
VALUES
('Jeeva', 'M', 22, 'Data Analyst', 30000, 1, 1),
('Subash', 'M', 23, 'Software Developer', 40000, 2, 2),
('Siva', 'M', 24, 'HR Manager', 35000, 3, 3),
('Sundhar', 'M', 25, 'Marketing Executive', 28000, 4, 4),
('Makibalan', 'M', 23, 'Web Developer', 32000, 1, 1);
SELECT * FROM locations;
SELECT * FROM employees;
SELECT * FROM departments;

INSERT INTO departments(department_name)
VALUES ('Sales');
INSERT INTO employees(employee_name, gender)
VALUES (NULL, 'M');
INSERT INTO employees(employee_name, gender)
VALUES ('Kumar', 'X');
INSERT INTO employees(employee_name, gender, age)
VALUES ('Kumar', 'M', 16);
INSERT INTO employees(employee_name, gender, age)
VALUES ('Kumar', 'M', 22);
SELECT * FROM EMPLOYEES;