-- SUM
SELECT SUM(Precio) FROM Clase;
SELECT SUM(Precio) AS Total, AlumnoNombre FROM Clase GROUP BY AlumnoNombre;
SELECT SUM(Precio) AS Total, Nombre, HoraClase FROM Clase GROUP BY Nombre, HoraClase;

-- AVG
SELECT * FROM Clase;
SELECT AVG(Precio) FROM Clase;
SELECT AVG(Precio), Nombre FROM Clase GROUP BY Nombre;
SELECT AVG(Precio),AlumnoNombre FROM Clase GROUP BY AlumnoNombre;

UPDATE Clase SET Precio = 380 WHERE ClaseID = 6;

-- COUNT
SELECT COUNT(*) FROM Clase WHERE AlumnoNombre = 'Ana Gutierrez';

-- MIN
SELECT MIN(Precio) FROM Clase WHERE AlumnoNombre = 'Rojer Rojas';

-- MAX
SELECT MAX(Precio) FROM Clase;

-- TODAS
SELECT COUNT(*) AS TotalClases, MIN(Precio) AS PrecioBajo, MAX(Precio) AS PrecioMaximo
FROM Clase;
SELECT COUNT(*) AS TotalClases, MIN(Precio) AS PrecioBajo, MAX(Precio) AS PrecioMaximo
FROM Clase WHERE AlumnoNombre = 'Rojer Rojas';
SELECT COUNT(*) AS TotalClases, MIN(Precio) AS PrecioBajo, MAX(Precio) AS PrecioMaximo, AlumnoNombre,
SUM(Precio) AS TotalPrecio FROM Clase GROUP BY AlumnoNombre;

-- Columnas calculadas
SELECT 4 * 5 Total;
SELECT (48 / 5) Total;
SELECT ProductoID, Nombre, Stock * PrecioEspecial AS TotalE, Stock * PrecioPublico AS TotalP
FROM Producto;