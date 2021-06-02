---- GetDate (Date 2020-03-18, DATETIME 2020-03-18 18:00:00)
SELECT GETDATE();
SELECT * FROM Clase;

INSERT INTO Clase (Nombre, FechaApertura, HoraClase, MaestroNombre, Precio, AlumnoNombre)
	VALUES('Computación' ,GETDATE(), '2100', 'Carmen Najera', 250, 'Alejandro Garay');

-- DateAdd (DAY, WEEK, MONTH, YEAR)
SELECT DATEADD(DAY, 1, '2020-03-25');
SELECT DATEADD(DAY, 2, GETDATE());
SELECT DATEADD(DAY,-2, '2020-03-25');
SELECT DATEADD(YEAR, 1, '2020-03-25');
SELECT *, DATEADD(MONTH, 2, FechaApertura) AS FechaFinaliza FROM Clase;

-- YEAR, MONTH, DAY
SELECT YEAR(GETDATE());
SELECT MONTH(GETDATE());
SELECT DAY(GETDATE());

----------------------
-- TABLA MARCAMAESTROS
----------------------

CREATE TABLE MarcaMaestros(
	MarcaID INT PRIMARY KEY IDENTITY(1, 1),
	FechaEntrada DATETIME,
	FechaSalida DATETIME,
	NombreMaestro VARCHAR(100)
);

INSERT INTO MarcaMaestros(FechaEntrada, FechaSalida, NombreMaestro)
	VALUES('2020-03-24 08:10:15', '2020-03-24 16:01:12', 'Carlos Diaz');
INSERT INTO MarcaMaestros(FechaEntrada, FechaSalida, NombreMaestro)
	VALUES('2020-03-24 07:58:20', '2020-03-24 15:57:10', 'Johana Padilla');

-- DATEDIFF (HoraEntrada 08:00, HoraSalida 16:00)
SELECT FechaEntrada, FechaSalida, NombreMaestro FROM MarcaMaestros;
SELECT DATEDIFF(MONTH, '2020-06-01', '2020-10-01');
SELECT DATEDIFF(MINUTE, '2020-03-24 08:00', fechaEntrada),
FechaEntrada, FechaSalida, NombreMaestro, DATEDIFF(MINUTE, '2020-03-24 16:00', FechaSalida)
FROM MarcaMaestros;