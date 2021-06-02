-- Crear tabla temporal
CREATE TABLE #ClientesNuevos(
	ClienteID INT,
	Nombre VARCHAR(200)
);

-- Insertar datos en tabla temporal
SELECT Nombre, Apellido INTO #AlumnosTemporal FROM Alumno;

-- Mostrar datos
SELECT * FROM #AlumnosTemporal;


DROP TABLE #AlumnosTemporal;

CREATE TABLE #AlumnosTemporal(
	Nombre VARCHAR(200),
	Apellido VARCHAR(200)
);

INSERT INTO #AlumnosTemporal SELECT Nombre, Apellido FROM Alumno;

SELECT * FROM #AlumnosTemporal;


SELECT A.AlumnoID, A.Nombre, A.Apellido, A.Sexo, A.Direccion,
(SELECT COUNT(*) FROM Inscripcion I WHERE I.AlumnoID = A.AlumnoID) AS TotalClases,
(SELECT ISNULL(SUM(C.Precio), 0)
	FROM Inscripcion I INNER JOIN Clase C ON I.ClaseID = C.ClaseID 
	WHERE I.AlumnoID = A.AlumnoID) AS SumaTotal
INTO #Alumnos
FROM Alumno A;

ALTER TABLE #Alumnos ADD Promedio MONEY;

UPDATE #Alumnos SET Promedio = SumaTotal / NULLIF(TotalClases, 0);

SELECT * FROM #Alumnos;

DROP TABLE #Alumnos;