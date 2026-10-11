CREATE DATABASE IF NOT EXISTS empleados;
USE empleados;

CREATE TABLE IF NOT EXISTS empleados (
    id INT NOT NULL AUTO_INCREMENT,
    nombres VARCHAR(100) NOT NULL,
    apellido1 VARCHAR(100) NOT NULL,
    apellido2 VARCHAR(100),
    edad INT,
    PRIMARY KEY (id)
);
