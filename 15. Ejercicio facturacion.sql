CREATE DATABASE Facturacion;

USE Facturacion;

CREATE TABLE Cliente(
	ClienteID INT PRIMARY KEY IDENTITY(1, 1),
	Nombre VARCHAR(200),
	Estado BIT
);

CREATE TABLE Producto(
	ProductoID INT PRIMARY KEY IDENTITY(1, 1),
	Nombre VARCHAR(200),
	Precio MONEY,
	Stock INT
);

CREATE TABLE Factura(
	FacturaID INT PRIMARY KEY IDENTITY(1, 1),
	Fecha DATETIME,
	Direccion VARCHAR(500),
	Estado BIT,
	Total MONEY,
	ClienteID INT
);

CREATE TABLE FacturaDetalle(
	LineaID INT PRIMARY KEY IDENTITY(1, 1),
	FacturaID INT,
	ProductoID INT,
	Cantidad INT,
	Precio MONEY,
	Total AS Cantidad * Precio
);

INSERT INTO FacturaDetalle(ProductoID, Cantidad, Precio)
	VALUES(1, 25, 10);

-- Borrar los datos de la tabla
TRUNCATE TABLE FacturaDetalle;

-- Llaves foráneas desde código
ALTER TABLE Factura ADD FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID);
ALTER TABLE FacturaDetalle ADD FOREIGN KEY (FacturaID) REFERENCES Factura(FacturaID);
ALTER TABLE FacturaDetalle ADD FOREIGN KEY (ProductoID) REFERENCES Producto(ProductoID);


INSERT INTO Cliente(Nombre, Estado)
	VALUES('Carlos Pineda', 1);
INSERT INTO Cliente(Nombre, Estado)
	VALUES('Carmen Hernandez', 1);

INSERT INTO Producto(Nombre, Precio, Stock)
	VALUES('Pan integral', 15, 20);
INSERT INTO Producto(Nombre, Precio, Stock)
	VALUES('Agua dulce', 10, 30);
INSERT INTO Producto(Nombre, Precio, Stock)
	VALUES('Cafe artesanal', 16, 20);

INSERT INTO Factura(Fecha, Direccion, Estado, Total, ClienteID)
	VALUES(GETDATE(), 'Barrio el centro sps', 1, 0, 1);

INSERT INTO FacturaDetalle(FacturaID, ProductoID, Cantidad, Precio)
	VALUES(1, 1, 2, 15);