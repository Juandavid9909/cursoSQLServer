-- LEN
SELECT LEN('Hola soy un texto');
SELECT LEN('');

-- UPPER
SELECT UPPER('Hola a todos');
SELECT UPPER(Nombre) FROM Alumno;

-- LOWER
SELECT LOWER('ESTE ESTA EN MAYUSCULAS');
SELECT LOWER(Nombre) FROM Alumno;

-- CONCAT
SELECT CONCAT('Hola', '@gmail');
SELECT CONCAT(Nombre, ' ', Apellido) AS NombreCompleto FROM Alumno;