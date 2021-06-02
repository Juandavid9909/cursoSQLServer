-- Mostrar datos
SELECT AlumnoID, Telefono, Apellido FROM Alumno;
SELECT * FROM Alumno;

-- Insertar datos
INSERT INTO Alumno (Nombre, Apellido, Edad, Sexo, Telefono)
	VALUES('Juan', 'Varela', 21, 'Masculino', '513514854');
INSERT INTO Alumno (Nombre, Apellido, Edad, Sexo, Telefono, Direccion)
	VALUES('Juan', 'Varela', 21, 'Masculino', '513514854', 'San Pedro');
INSERT INTO Alumno (Nombre, Apellido, Edad)
	VALUES('Carmen', 'Najera', 15);

-- Actualizar datos
UPDATE Alumno SET Direccion = 'Puertas del sol' WHERE AlumnoID = 1;
UPDATE Alumno SET Direccion = 'La Flora', Edad = 55 WHERE AlumnoID = 2;

-- Borrar datos
DELETE Alumno WHERE AlumnoID = 1;

-- Alias
SELECT Nombre NombreDelAlumno FROM Alumno;
SELECT Nombre [Nombre Del Alumno], Apellido SegundoNombre FROM Alumno;