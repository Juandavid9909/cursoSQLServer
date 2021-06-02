-- Crear
CREATE PROCEDURE spInsertarAlumno
AS
BEGIN
	INSERT INTO Alumno(Nombre, Apellido, Edad, Sexo, Direccion, Telefono)
		VALUES('Johana', 'Pineda', 34, 'Femenino', 'Barrio x', '1525-5665')
END

EXEC spInsertarAlumno;


-- Modificar
ALTER PROCEDURE spInsertarAlumno
	@Nombre VARCHAR(100),
	@Apellido VARCHAR(100),
	@Edad INT,
	@Sexo VARCHAR(20),
	@Direccion VARCHAR(200),
	@Telefono VARCHAR(20)
AS
BEGIN
	INSERT INTO Alumno(Nombre, Apellido, Edad, Sexo, Direccion, Telefono)
		VALUES(@Nombre, @Apellido, @Edad, @Sexo, @Direccion, @Telefono)
END

EXEC spInsertarAlumno 'Carmen', 'Pineda', 25, 'Femenino', 'Barrio el benque SPS', '2568-59595';


ALTER PROCEDURE spInsertarAlumno
	@Nombre VARCHAR(100),
	@Apellido VARCHAR(100),
	@Edad INT,
	@Sexo VARCHAR(20),
	@Direccion VARCHAR(200),
	@Telefono VARCHAR(20)
AS
BEGIN
	DECLARE @Existe BIT = (SELECT COUNT(*) FROM Alumno WHERE Nombre = @Nombre AND Apellido = @Apellido)
	
	IF(@Existe = 1)
	BEGIN
		DECLARE @AlumnoID INT = (SELECT TOP 1 AlumnoID FROM Alumno WHERE Nombre = @Nombre AND Apellido = @Apellido)
		UPDATE Alumno SET Edad = @Edad, Sexo = @Sexo, Direccion = @Direccion, Telefono = @Telefono
			WHERE AlumnoID = @AlumnoID
	END
	ELSE
	BEGIN
		INSERT INTO Alumno(Nombre, Apellido, Edad, Sexo, Direccion, Telefono)
			VALUES(@Nombre, @Apellido, @Edad, @Sexo, @Direccion, @Telefono)
	END
END