-- AND
SELECT * FROM Producto WHERE PrecioEspecial > 8 AND Stock <= 8;

-- OR
SELECT * FROM Producto WHERE ProductoID > 6 OR Stock > 5;
SELECT * FROM Producto WHERE ProductoId > 4 OR Nombre = 'Pan';

-- IN
SELECT * FROM Maestro WHERE Nombre IN ('Elmer', 'Mirna');
SELECT * FROM Maestro WHERE Edad IN (20, 18);

-- LIKE
SELECT * FROM Producto WHERE Nombre LIKE '%pastel%';
SELECT * FROM Producto WHERE Nombre LIKE '%cafe%leche%'; -- Busca varias palabras

-- NOT IN
SELECT * FROM Maestro WHERE NOT MaestroId = 3;
SELECT * FROM Maestro WHERE NOT Edad = 20 AND NOT MaestroID = 3;
SELECT * FROM Maestro WHERE Nombre NOT IN ('Elmer', 'Estefani');

-- BETWEEN
SELECT * FROM Producto WHERE PrecioEspecial BETWEEN 7 AND 12;
SELECT * FROM Maestro WHERE FechaIngreso BETWEEN '06-01-2019' AND '11-01-2020';


--------------
-- TABLA CLASE
--------------

CREATE TABLE Clase(
	ClaseID INT PRIMARY KEY IDENTITY(1, 1),
	Nombre VARCHAR(100),
	FechaApertura Date,
	HoraClase VARCHAR(10),
	MaestroNombre VARCHAR(100),
	Precio MONEY,
	AlumnoNombre VARCHAR(100)
);

SELECT * FROM Clase;

INSERT INTO CLASE (Nombre, FechaApertura, HoraClase, MaestroNombre, Precio, AlumnoNombre)
	VALUES('Español', '03-18-2020', '2000', 'Estefani Hernandez', 200, 'Rojer Rojas');
INSERT INTO CLASE (Nombre, FechaApertura, HoraClase, MaestroNombre, Precio, AlumnoNombre)
	VALUES('Matematicas', '03-18-2020', '2100', 'Estefani Hernandez', 220, 'Rojer Rojas');
INSERT INTO CLASE (Nombre, FechaApertura, HoraClase, MaestroNombre, Precio, AlumnoNombre)
	VALUES('Ingles', '03-18-2020', '2200', 'Carmen Najera', 220, 'Rojer Rojas');

INSERT INTO CLASE (Nombre, FechaApertura, HoraClase, MaestroNombre, Precio, AlumnoNombre)
	VALUES('Español', '03-18-2020', '2000', 'Estefani Hernandez', 200, 'Ana Gutierrez');
INSERT INTO CLASE (Nombre, FechaApertura, HoraClase, MaestroNombre, Precio, AlumnoNombre)
	VALUES('Matematicas', '03-18-2020', '2100', 'Estefani Hernandez', 220, 'Ana Gutierrez');
INSERT INTO CLASE (Nombre, FechaApertura, HoraClase, MaestroNombre, Precio, AlumnoNombre)
	VALUES('Ingles', '03-18-2020', '2200', 'Carmen Najera', 220, 'Ana Gutierrez');