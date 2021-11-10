DROP DATABASE IF EXISTS employee_db
CREATE DATABASE employee_db

USE employee_db

CREATE TABLE employee (
    id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT
);

CREATE TABLE roles (
    id INT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT
);

CREATE TABLE department (
    id INT PRIMARY KEY,
    name VARCHAR(30)
);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Linda', 'Nail', 'Office Manager', 1), ('Bob', 'Sullivan', 'Director', 2), ('Carrie', 'Glass', 'Web Developer', 3), ('Pattie', 'Lovemore', 'Salesman', 4)

INSERT INTO roles (title, salary, department_id)
VALUES ('Office Manager', '150000', 1), ('Director', '100000', 2), ('Web Developer', '80000', 3), ('Sales', '70000', 4)

INSERT INTO department (name)
VALUES ('Management'), ('HR'), ('Tech'), ('Sales')