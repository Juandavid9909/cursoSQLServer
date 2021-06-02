USE Transporte;

CREATE VIEW vViajesRealizados AS
SELECT V.ViajeID, V.Fecha, CONCAT(C.Nombre, ' ', C.Apellido) AS NombreCliente,
L.Nombre, L.Direccion, CONCAT(Ch.Nombre, ' ', Ch.Apellido) AS NombreChofer
FROM Viaje V
INNER JOIN Cliente C ON V.ClienteID = C.ClienteID
INNER JOIN Chofer Ch ON V.ChoferID = Ch.ChoferID
INNER JOIN Lugar L ON V.LugarID = L.LugarID

SELECT COUNT(*), NombreChofer FROM vViajesRealizados GROUP BY NombreChofer;