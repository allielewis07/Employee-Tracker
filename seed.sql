-- Drops the programming_db if it already exists --
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
VALUE (75, "Lilly potter");

-- Inserted a set of records into the table
INSERT INTO role (id, title, salary ,department_id)
VALUE (17, "Lead Engineer", 80000 , 56);

-- Inserted a set of records into the table
INSERT INTO employee (id, first_name, last_name ,role_id,manager_id)
VALUE (19, "Bob", "lewis" , 56, 2);

INSERT INTO role (id, title, salary ,department_id)
VALUE (7, "Manager", 85000 , 70);

INSERT INTO employee (id, first_name, last_name ,role_id,manager_id)
VALUE (2, "Diesel", "lewis" , 56, NULL);
