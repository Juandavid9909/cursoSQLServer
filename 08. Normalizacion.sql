CREATE DATABASE Transporte;

USE Transporte;

-- Tenemos una empresa que cuenta con varios clientes donde un chofer pasa por ellos y les
-- cobra una comisión o un precio por cada viaje.

-- TABLAS
-- Cliente
-- Chofer
-- Viaje
-- Lugar

CREATE TABLE Cliente(
	ClienteID INT PRIMARY KEY IDENTITY(1, 1),
	Nombre VARCHAR(100),
	Apellido VARCHAR(100)
);

CREATE TABLE Chofer(
	ChoferID INT PRIMARY KEY IDENTITY(1, 1),
	Nombre VARCHAR(100),
	Apellido VARCHAR(100),
	Sueldo MONEY
);

CREATE TABLE Lugar(
	LugarID INT PRIMARY KEY IDENTITY(1, 1),
	Nombre VARCHAR(100),
	Direccion VARCHAR(100)
);

CREATE TABLE Viaje(
	ViajeID INT PRIMARY KEY IDENTITY(1, 1),
	Fecha DATETIME,
	ClienteID INT,
	ChoferID INT,
	LugarID INT,
	Precio MONEY
);

INSERT INTO Chofer(Nombre, Apellido, Sueldo)
	VALUES('Carlos', 'Medina', 10000);
INSERT INTO Chofer(Nombre, Apellido, Sueldo)
	VALUES('Angel', 'George', 10000);
INSERT INTO Chofer(Nombre, Apellido, Sueldo)
	VALUES('Juan', 'Ramos', 11000);
INSERT INTO Chofer(Nombre, Apellido, Sueldo)
	VALUES('Carmen', 'Lopez', 11000);

INSERT INTO Cliente(Nombre, Apellido)
	VALUES('Ana', 'Lucia');
INSERT INTO Cliente(Nombre, Apellido)
	VALUES('Estefania', 'Hernandez');
INSERT INTO Cliente(Nombre, Apellido)
	VALUES('Elmer', 'Garay');
INSERT INTO Cliente(Nombre, Apellido)
	VALUES('Johana', 'Pineda');
INSERT INTO Cliente(Nombre, Apellido)
	VALUES('Ana', 'Castro');

INSERT INTO Lugar(Nombre, Direccion)
	VALUES('Oficina SPS', 'Barrio el centro calle principal');
INSERT INTO Lugar(Nombre, Direccion)
	VALUES('Casa SPS', 'Barrio el benque 4 avenida, 6 calle');
INSERT INTO Lugar(Nombre, Direccion)
	VALUES('Escuela', 'Barrio el carrizal 25 avenida, 32 calle');
INSERT INTO Lugar(Nombre, Direccion)
	VALUES('Gimnasio', 'Barrio el Centro');

SELECT * FROM Lugar;

SELECT * FROM Cliente;

DELETE FROM Cliente WHERE ClienteID = 1;