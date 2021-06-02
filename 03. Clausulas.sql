CREATE TABLE Maestro(
	MaestroID INT PRIMARY KEY IDENTITY(1, 1),
	Nombre VARCHAR(100),
	Apellido VARCHAR(100),
	Correo VARCHAR(500),
	Direccion VARCHAR(500),
	Edad INT,
	Sueldo MONEY,
	FechaIngreso DATE,
	Telefono VARCHAR(20)
);

INSERT INTO Maestro(Nombre, Apellido, Correo, Direccion, Edad, Sueldo, FechaIngreso, Telefono)
	VALUES('Estefani', 'Bonilla', 'estefani@gmail.com', 'San Pedro', 20, 2500, '12-25-2020', '586748');
INSERT INTO Maestro(Nombre, Apellido, Correo, Direccion, Edad, Sueldo, FechaIngreso, Telefono)
	VALUES('Carmen', 'Najera', 'carmen@gmail.com', 'Honduras', 22, 2400, '01-25-2019', '5867475868');
INSERT INTO Maestro(Nombre, Apellido, Correo, Direccion, Edad, Sueldo, FechaIngreso, Telefono)
	VALUES('Mirna', 'Reyes', 'mirna@gmail.com', 'Cortes', 26, 2200, '06-12-2020', '586745348');
INSERT INTO Maestro(Nombre, Apellido, Correo, Direccion, Edad, Sueldo, FechaIngreso, Telefono)
	VALUES('Elmer', 'Pineda', 'elmer@gmail.com', 'Sula', 18, 2100, '11-20-2019', '5861123748');

UPDATE Maestro SET Apellido = 'Reyes' WHERE MaestroId = 4;

-- Mostrar datos con condición
SELECT * FROM Maestro WHERE Apellido = 'Reyes' AND Nombre = 'Elmer';

-- Ordenar datos
SELECT * FROM Maestro ORDER BY Sueldo;
SELECT * FROM Maestro ORDER BY FechaIngreso DESC;

-- Limitar registros
SELECT TOP 1 * FROM Maestro ORDER BY MaestroID DESC;
SELECT TOP 2 Nombre, Apellido, Direccion FROM Maestro ORDER BY MaestroID DESC;
SELECT TOP 1 * FROM Maestro WHERE MaestroID = 3 ORDER BY MaestroID DESC;

-- Seleccionar datos que no estén repetidos
SELECT DISTINCT Apellido FROM Maestro;
SELECT DISTINCT Direccion FROM Maestro;

--UPDATE Maestro SET Direccion = 'San Pedro' WHERE MaestroID = 4;

-- Agrupar datos (Los datos de select deben estar en GROUP BY)
SELECT DISTINCT Apellido, Direccion FROM Maestro;
SELECT Apellido, Direccion, SUM(Sueldo) SueldoSumado FROM Maestro GROUP BY Apellido, Direccion;


-----------------
-- TABLA PRODUCTO
-----------------

CREATE TABLE Producto(
	ProductoID INT PRIMARY KEY IDENTITY(1, 1),
	Nombre VARCHAR(500),
	PrecioEspecial MONEY,
	PrecioPublico MONEY,
	Stock INT
);

INSERT INTO Producto (Nombre, PrecioEspecial, PrecioPublico, Stock)
	VALUES('Malteada', 12.0, 15.0, 10);
INSERT INTO Producto
	VALUES('Pan', 8.0, 10.0, 20);
INSERT INTO Producto
	VALUES('Cafe con pan', 7.0, 8.5, 25);
INSERT INTO Producto
	VALUES('Cafe con leche', 5.0, 6.5, 50);
INSERT INTO Producto
	VALUES('Dulce de leche', 8.0, 10.5, 10);
INSERT INTO Producto
	VALUES('Pastel tres leches', 15.0, 17.5, 5);
INSERT INTO Producto
	VALUES('Pastel de chocolate', 12.0, 14.0, 8);