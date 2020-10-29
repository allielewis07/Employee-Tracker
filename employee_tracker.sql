DROP DATABASE IF EXISTS employee_tracker;
-- Created the DB "employee_tracker" (only works on local connections)
CREATE DATABASE employee_tracker;
-- Use the DB employee_tracker for all the rest of the script
USE employee_tracker;
-- Created the table "departments"
CREATE TABLE department (
id INT (10) ,
name VARCHAR(30) NULL
);
-- Created the table "role"
CREATE TABLE role (
id INT (10) ,
title VARCHAR(30) NULL,
salary DECIMAL(10,2),
department_id INT(255) NULL
);
-- Created the table "employees"
CREATE TABLE employee (
id INT(255) NULL,
first_name VARCHAR(30) NULL,
last_name VARCHAR(30) NULL,
role_id INT (255) NULL,
manager_id INT (255) 
);
-- Inserted a set of records into the table
INSERT INTO department (id, name)
VALUE (1, "Sales");
INSERT INTO department (id, name)
VALUE (2, "Engineering");
INSERT INTO department (id, name)
VALUE (3, "Finance");
INSERT INTO department (id, name)
VALUE (4, "Legal");
SELECT * FROM department;
-- Inserted a set of records into the table
INSERT INTO role (title, salary, department_id)
VALUE ("Lead Engineer", 150000, 2);
INSERT INTO role (title, salary, department_id)
VALUE ("Legal Team Lead", 250000, 4);
INSERT INTO role (title, salary, department_id)
VALUE ("Accountant", 125000, 3);
INSERT INTO role (title, salary, department_id)
VALUE ("Sales Lead", 100000, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Salesperson", 80000, 1);
SELECT * FROM role;
-- Inserted a set of records into the table
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Lilly", "Lewis", null, 1);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Patrick", "samual", null, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Liam","quinn",null,3);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Diesel", "quinn", 1, 4);
SELECT * FROM employee