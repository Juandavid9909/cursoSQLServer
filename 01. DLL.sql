-- Imprimir
PRINT 'Hola Mundo';

-- Crear base de datos
CREATE DATABASE Escuela;
USE Escuela;

-- Crear tablas
CREATE TABLE Alumno(
	AlumnoID INT PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	Nombre VARCHAR(20) NOT NULL,
	Apellido VARCHAR(20) NOT NULL,
	Edad INT NOT NULL,
	Sexo VARCHAR(20)
);

-- Agregar columnas a tablas existentes
ALTER TABLE Alumno ADD Direccion VARCHAR(500) NOT NULL;
ALTER TABLE Alumno ADD Telefono VARCHAR(100);
ALTER TABLE Alumno ADD CampoPrueba VARCHAR(50);

-- Eliminar columnas
ALTER TABLE Alumno DROP COLUMN CampoPrueba;