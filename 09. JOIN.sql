USE Escuela;

INSERT INTO Inscripcion VALUES(1, '2020-03-26 20:07:21.847', 1, 1, 1, 2000);
INSERT INTO Inscripcion VALUES(2, '2020-03-26 20:45:26.387', 25, 1, 1, 2100);

-- INNER JOIN
SELECT I.InscripcionID, I.fecha, I.Hora, C.Nombre
FROM Inscripcion I INNER JOIN Clase C ON I.ClaseID = C.ClaseID;

SELECT I.InscripcionID, I.fecha, I.Hora,
C.Nombre [Nombre Clase], A.Nombre [Nombre Alumno], A.Direccion, M.Nombre [Nombre Maestro]
FROM Inscripcion I
INNER JOIN Clase C ON I.ClaseID = C.ClaseID
INNER JOIN Alumno A ON I.AlumnoID = A.AlumnoID
INNER JOIN Maestro M ON I.MaestroID = M.MaestroID;

-- LEFT JOIN
SELECT * FROM Maestro M LEFT JOIN Inscripcion I ON I.MaestroID = M.MaestroID;

SELECT * FROM Inscripcion I LEFT JOIN Maestro M ON I.MaestroID = M.MaestroID;

-- RIGHT JOIN
SELECT * FROM Inscripcion I RIGHT JOIN Maestro M ON I.MaestroID = M.MaestroID;

SELECT * FROM Maestro M RIGHT JOIN Inscripcion I ON I.MaestroID = M.MaestroID;

-- Unir Tablas
USE Transporte;

DELETE FROM Lugar;

INSERT INTO Lugar VALUES('Casa Teg', '4 avenida, 3 calle barrio el centro', 3);
INSERT INTO Lugar VALUES('Trabajo Teg', '25 avenida, 48 calle barrio el Carrizal', 3);
INSERT INTO Lugar VALUES('Casa SPS', '2 avenida, 8 calle barrio el centro', 4);
INSERT INTO Lugar VALUES('Trabajo SPS', '23 avenida, 22 calle barrio el Benque', 4);
INSERT INTO Lugar VALUES('Casa Cortes', '1 avenida, 2 calle barrio el centro Cortes', 5);
INSERT INTO Lugar VALUES('Trabajo Cortes', '21 avenida, 2 calle barrio el Centro', 5);

INSERT INTO Viaje(Fecha, ClienteID, ChoferID, LugarID, Precio) VALUES(GETDATE(), 3, 2, 6, 200);

SELECT * FROM Viaje V INNER JOIN Cliente C ON V.ClienteID = C.ClienteID
INNER JOIN Chofer Ch ON V.ChoferID = Ch.ChoferID
INNER JOIN Lugar L ON V.LugarID = L.LugarID;

-- Union (muestra datos sin repetir) y Union All (muestra incluso los datos repetidos)
INSERT INTO Viaje VALUES(GETDATE(), 5, 2, 6, 250);

SELECT ClienteID FROM Cliente
UNION ALL
SELECT ClienteID FROM Viaje;