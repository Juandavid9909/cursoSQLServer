-- Ejercicio GROUP BY
USE Escuela;

SELECT A.AlumnoID, A.Nombre, A.Apellido, A.Edad, A.Sexo, A.Direccion,
COUNT(I.AlumnoID) AS ClasesMatriculadas
FROM Alumno A
INNER JOIN Inscripcion I ON A.AlumnoID = I.AlumnoID
GROUP BY A.AlumnoID, A.Nombre, A.Apellido, A.Edad, A.Sexo, A.Direccion;

-- Subconsultas
SELECT A.AlumnoID, A.Nombre, A.Apellido, A.Sexo, A.Direccion,
(SELECT COUNT(*) FROM Inscripcion I WHERE I.AlumnoID = A.AlumnoID)
FROM Alumno A;

SELECT A.AlumnoID, A.Nombre, A.Apellido, A.Sexo, A.Direccion,
(SELECT SUM(I.InscripcionID) FROM Inscripcion I WHERE I.AlumnoID = A.AlumnoID)
FROM Alumno A;


SELECT A.AlumnoID, A.Nombre, A.Apellido, A.Sexo, A.Direccion,
(SELECT COUNT(*) FROM Inscripcion I WHERE I.AlumnoID = A.AlumnoID) AS TotalClases,
(SELECT ISNULL(SUM(C.Precio), 0)
	FROM Inscripcion I INNER JOIN Clase C ON I.ClaseID = C.ClaseID WHERE I.AlumnoID = A.AlumnoID)
FROM Alumno A;


-- Ejercicio final
CREATE VIEW vAlumnosMatriculados
AS
SELECT A.AlumnoID, A.Nombre, A.Apellido, A.Sexo, A.Direccion,
(SELECT COUNT(*) FROM Inscripcion I WHERE I.AlumnoID = A.AlumnoID) AS TotalClases,
(SELECT ISNULL(SUM(C.Precio), 0)
	FROM Inscripcion I INNER JOIN Clase C ON I.ClaseID = C.ClaseID 
	WHERE I.AlumnoID = A.AlumnoID) AS SumaTotal,
(SELECT ISNULL(AVG(C.Precio), 0)
	FROM Inscripcion I INNER JOIN Clase C ON I.ClaseID = C.ClaseID 
	WHERE I.AlumnoID = A.AlumnoID) AS PromedioPorClase
FROM Alumno A;

INSERT INTO Inscripcion(Fecha, ClaseID, AlumnoID, MaestroID, Hora)
	VALUES(GETDATE(), 7, 3, 3, '1400');

SELECT * FROM vAlumnosMatriculados;