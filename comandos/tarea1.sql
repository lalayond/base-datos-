CREATE TABLE Ejemplo (
    id INTEGER PRIMARY KEY,
    texto TEXT,
    entero INTEGER,
    decimal REAL,
    fecha DATE,
    booleano BOOLEAN
);

INSERT INTO Ejemplo VALUES (1, 'Ejemplo1', 25, 10.5, '2022-05-15', 0);
INSERT INTO Ejemplo VALUES (2, 'Ejemplo2', 63, 45.7, '2022-06-22', 1);
INSERT INTO Ejemplo VALUES (3, 'Ejemplo3', 12, 30.0, '2022-07-10', 0);
INSERT INTO Ejemplo VALUES(4, 'Ejemplo4', 78, 75.2, '2022-08-05', 1);
INSERT INTO Ejemplo VALUES(5, 'Ejemplo5', 42, 18.9, '2022-09-12', 0);
INSERT INTO Ejemplo VALUES(6, 'Ejemplo6', 55, 60.3, '2022-10-08', 1);
INSERT INTO Ejemplo VALUES(7, 'Ejemplo7', 10, 40.1, '2022-11-17', 0);
INSERT INTO Ejemplo VALUES(8, 'Ejemplo8', 87, 22.6, '2022-12-03', 1);
INSERT INTO Ejemplo VALUES(9, 'Ejemplo9', 31, 55.0, '2023-01-20', 0);
INSERT INTO Ejemplo VALUES(10, 'Ejemplo10', 68, 90.4, '2023-02-14', 1);
INSERT INTO Ejemplo VALUES(11, 'Ejemplo11', 15, 12.8, '2023-03-22', 0);
INSERT INTO Ejemplo VALUES(12, 'Ejemplo12', 72, 48.6, '2023-04-09', 1);
INSERT INTO Ejemplo VALUES(13, 'Ejemplo13', 22, 33.7, '2023-05-01', 0);
INSERT INTO Ejemplo VALUES(14, 'Ejemplo14', 93, 70.2, '2023-06-18', 1);
INSERT INTO Ejemplo VALUES(15, 'Ejemplo15', 37, 15.4, '2023-07-05', 0);
INSERT INTO Ejemplo VALUES(16, 'Ejemplo16', 81, 82.9, '2023-08-11', 1);
INSERT INTO Ejemplo VALUES(17, 'Ejemplo17', 45, 28.3, '2023-09-27', 0);
INSERT INTO Ejemplo VALUES(18, 'Ejemplo18', 60, 50.6, '2023-10-15', 1);
INSERT INTO Ejemplo VALUES(19, 'Ejemplo19', 5, 8.7, '2023-11-22', 0);
INSERT INTO Ejemplo VALUES(20, 'Ejemplo20', 76, 65.1, '2023-12-08', 1);
INSERT INTO Ejemplo VALUES(21, 'Ejemplo21', 33, 20.3, '2024-01-14', 0);
INSERT INTO Ejemplo VALUES(22, 'Ejemplo22', 70, 55.8, '2024-02-29', 1);
INSERT INTO Ejemplo VALUES(23, 'Ejemplo23', 13, 42.7, '2024-03-18', 0);
INSERT INTO Ejemplo VALUES(24, 'Ejemplo24', 89, 78.4, '2024-04-25', 1);
INSERT INTO Ejemplo VALUES(25, 'Ejemplo25', 49, 15.9, '2024-05-12', 0);
INSERT INTO Ejemplo VALUES(26, 'Ejemplo26', 62, 60.7, '2024-06-20', 1);
INSERT INTO Ejemplo VALUES(27, 'Ejemplo27', 8, 35.2, '2024-07-07', 0);
INSERT INTO Ejemplo VALUES(28, 'Ejemplo28', 95, 25.6, '2024-08-23', 1);
INSERT INTO Ejemplo VALUES(29, 'Ejemplo29', 27, 50.0, '2024-09-10', 0);
INSERT INTO Ejemplo VALUES(30, 'Ejemplo30', 74, 85.3, '2024-10-05', 1);
INSERT INTO Ejemplo VALUES(31, 'Ejemplo31', 18, 11.8, '2024-11-12', 0);
INSERT INTO Ejemplo VALUES(32, 'Ejemplo32', 83, 47.6, '2024-12-28', 1);
INSERT INTO Ejemplo VALUES(33, 'Ejemplo33', 38, 32.7, '2025-01-15', 0);
INSERT INTO Ejemplo VALUES(34, 'Ejemplo34', 101, 70.2, '2025-02-01', 1);
INSERT INTO Ejemplo VALUES(35, 'Ejemplo35', 52, 18.4, '2025-03-20', 0);
INSERT INTO Ejemplo VALUES(36, 'Ejemplo36', 67, 83.9, '2025-04-06', 1);
INSERT INTO Ejemplo VALUES(37, 'Ejemplo37', 43, 28.3, '2025-05-13', 0);
INSERT INTO Ejemplo VALUES(38, 'Ejemplo38', 58, 50.6, '2025-06-30', 1);
INSERT INTO Ejemplo VALUES(39, 'Ejemplo39', 9, 8.7, '2025-07-17', 0);
INSERT INTO Ejemplo VALUES(40, 'Ejemplo40', 82, 65.1, '2025-08-23', 1);
INSERT INTO Ejemplo VALUES(41, 'Ejemplo41', 26, 20.3, '2025-09-09', 0);
INSERT INTO Ejemplo VALUES(42, 'Ejemplo42', 73, 55.8, '2025-10-26', 1);
INSERT INTO Ejemplo VALUES(43, 'Ejemplo43', 14, 42.7, '2025-11-13', 0);
INSERT INTO Ejemplo VALUES(44, 'Ejemplo44', 90, 78.4, '2025-12-30', 1);
INSERT INTO Ejemplo VALUES(45, 'Ejemplo45', 50, 15.9, '2026-01-16', 0);
INSERT INTO Ejemplo VALUES(46, 'Ejemplo46', 63, 60.7, '2026-02-03', 1);
INSERT INTO Ejemplo VALUES(47, 'Ejemplo47', 7, 35.2, '2026-03-22', 0);
INSERT INTO Ejemplo VALUES(48, 'Ejemplo48', 96, 25.6, '2026-04-08', 1);
INSERT INTO Ejemplo VALUES(49, 'Ejemplo49', 28, 50.0, '2026-05-25', 0);
INSERT INTO Ejemplo VALUES (50, 'Ejemplo50', 75, 85.3, '2026-06-11', 1);


Obtén todas las entradas de la tabla Ejemplo.
SELECT * FROM Ejemplo;


Obtén las entradas con el campo entero mayor a 50.
SELECT *FROM Ejemplo WHERE entero > 50;


Elimina las entradas donde el campo booleano es igual a True.
DELETE FROM Ejemplo WHERE booleano = True;


Modifica el campo texto de las entradas donde el campo entero es menor a 30 y establece el texto como "Modificado".
UPDATE Ejemplo SET texto = 'Modificado' WHERE entero < 30;


Elimina las entradas donde el campo entero es igual a 50.
DELETE FROM Ejemplo WHERE entero = 50;

Incrementa en 10 el valor del campo entero para las entradas donde el campo booleano es igual a False.
UPDATE Ejemplo SET entero = entero + 10 WHERE booleano = False;


Elimina las entradas donde el campo decimal es menor a 50.
DELETE FROM Ejemplo WHERE decimal < 50;


Actualiza el campo fecha de todas las entradas a la fecha actual.
UPDATE Ejemplo SET fecha = CURRENT_DATE;

+----+------------+--------+---------+------------+----------+
| id |   texto    | entero | decimal |   fecha    | booleano |
+----+------------+--------+---------+------------+----------+
| 9  | Ejemplo9   | 41     | 55.0    | 2023-12-14 | 0        |
| 29 | Modificado | 37     | 50.0    | 2023-12-14 | 0        |
| 49 | Modificado | 38     | 50.0    | 2023-12-14 | 0        |
+----+------------+--------+---------+------------+----------+
