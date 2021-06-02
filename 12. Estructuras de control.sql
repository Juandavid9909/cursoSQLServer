-- Variables
DECLARE @TotalClasesDelAlumno INT  = 500;
DECLARE @NombreDelAlumno VARCHAR(100) = 'Juan Perez';

SELECT @TotalClasesDelAlumno, @NombreDelAlumno;


DECLARE @Numero1 INT = 1, @Numero2 INT = 5, @Numero3 INT = 2;

SELECT @Numero1 + @Numero2 + @Numero3;


DECLARE @TotalPagoAlumno MONEY = (
	SELECT SUM(Precio) FROM Inscripcion I INNER JOIN Clase C ON I.ClaseID = C.ClaseID
);

DECLARE @TotalPagoAlumno2 MONEY = 0;

SET @TotalPagoAlumno2 = (
	SELECT SUM(Precio) FROM Inscripcion I INNER JOIN Clase C ON I.ClaseID = C.ClaseID
);

SELECT @TotalPagoAlumno;


-- IF - ELSE
DECLARE @TotalClase INT = 10;
DECLARE @Descuento DECIMAL(10, 10) = 0.15;
DECLARE @Precio MONEY = 100;

IF(@TotalClase > 5)
BEGIN
	SET @Precio = @Precio - (@Precio * @Descuento)
END

SELECT @Precio;

IF(2 + 2 = 4)
BEGIN
	SELECT 'Es cierto'
END
ELSE
BEGIN
	SELECT 'No es cierto'
END


-- CASE WHEN
SELECT CASE WHEN 1 + 1 = 2 THEN 'Es verdadero' ELSE 'No es verdadero' END;


DECLARE @Fecha DATE = '2020-07-05';

SELECT
CASE WHEN MONTH(@Fecha) = 4 THEN 'Abril'
WHEN MONTH(@Fecha) = 5 THEN 'Mayo'
WHEN MONTH(@Fecha) = 6 THEN 'Junio'
WHEN MONTH(@Fecha) = 7 THEN 'Julio'
WHEN MONTH(@Fecha) = 8 THEN 'Agosto'
END;