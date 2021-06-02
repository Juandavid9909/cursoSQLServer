-- Triggers DML se ejecutan cuando hacemos INSERT, DELETE o UPDATE
-- Triggers DDL se ejecutan cuando hacemos CREATE, ALTER o DROP
-- Triggers Logon se ejecutan cuando hay un inicio de sesión en SQL Server
CREATE TRIGGER trActualizarStock ON FacturaDetalle FOR INSERT
AS
BEGIN
	SELECT ProductoID, Cantidad INTO #ProductoFacturado FROM INSERTED

	SELECT * FROM #ProductoFacturado

	DROP TABLE #ProductoFacturado
END;



INSERT INTO Factura(Fecha, Direccion, Estado, Total, ClienteID)
	VALUES(GETDATE(), 'Barrio el El Benque', 1, 0, 2);

INSERT INTO FacturaDetalle(FacturaID, ProductoID, Cantidad, Precio)
	VALUES(2, 1, 2, 15);

ALTER TRIGGER trActualizarStock ON FacturaDetalle FOR INSERT
AS
BEGIN
	SELECT ProductoID, Cantidad INTO #ProductoFacturado FROM INSERTED

	UPDATE P SET P.Stock = P.Stock - PF.Cantidad FROM Producto P
	INNER JOIN #ProductoFacturado PF ON P.ProductoID = PF.ProductoID

	SELECT * FROM #ProductoFacturado

	DROP TABLE #ProductoFacturado
END;

INSERT INTO Factura(Fecha, Direccion, Estado, Total, ClienteID)
	VALUES(GETDATE(), 'Barrio Morazán', 1, 0, 2);

INSERT INTO FacturaDetalle(FacturaID, ProductoID, Cantidad, Precio)
	VALUES(3, 3, 5, 16);

SELECT * FROM Producto;



CREATE TABLE LogProductosEliminados(
	LogID INT PRIMARY KEY IDENTITY(1, 1),
	Fecha DATETIME,
	Usuario VARCHAR(200),
	ProductoID INT,
	Cantidad INT,
	FacturaID INT
);

-- TRIGGER para saber qué usuario borra datos
CREATE TRIGGER trProductosFacturaEliminado ON FacturaDetalle FOR DELETE
AS
BEGIN
	INSERT INTO LogProductosEliminados(Fecha, Usuario, ProductoID, Cantidad, FacturaID)

	SELECT GETDATE(), SUSER_NAME(), ProductoID, Cantidad, FacturaID FROM DELETED
END;

SELECT * FROM FacturaDetalle;

DELETE FROM FacturaDetalle WHERE LineaID = 5;

SELECT * FROM LogProductosEliminados;