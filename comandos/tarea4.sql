-sqlite3 tarea4.db
CREATE TABLE productos (
    id INTEGER PRIMARY KEY,
    nombre TEXT,
    categoria TEXT,
    precio REAL
);

CREATE TABLE ventas (
    id INTEGER PRIMARY KEY,
    id_producto INTEGER,
    cantidad INTEGER,
    fecha DATE,
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);

INSERT INTO productos (id, nombre, categoria, precio) VALUES 
    (1, 'Arroz', 'Alimentos', 2.5),
    (2, 'Leche', 'Lácteos', 1.8),
    (3, 'Pan', 'Panadería', 1.2),
    (4, 'Manzanas', 'Frutas', 3.0),
    (5, 'Pollo', 'Carnes', 5.5),
    (6, 'Huevos', 'Lácteos', 1.0),
    (7, 'Yogurt', 'Lácteos', 2.0),
    (8, 'Tomates', 'Verduras', 2.2),
    (9, 'Queso', 'Lácteos', 4.0),
    (10, 'Cereal', 'Desayuno', 3.5),
    (11, 'Papel Higiénico', 'Hogar', 1.5),
    (12, 'Cepillo de Dientes', 'Higiene', 2.0),
    (13, 'Detergente', 'Limpieza', 2.8),
    (14, 'Galletas', 'Snacks', 1.7),
    (15, 'Aceite de Oliva', 'Cocina', 4.5),
    (16, 'Café', 'Bebidas', 5.0),
    (17, 'Sopa enlatada', 'Conservas', 2.3),
    (18, 'Jabón de Baño', 'Higiene', 1.2),
    (19, 'Botellas de Agua', 'Bebidas', 1.0),
    (20, 'Cerveza', 'Bebidas', 3.8);

INSERT INTO ventas (id_producto, cantidad, fecha) VALUES 
    (1, 5, '2024-01-17'),
    (2, 3, '2024-01-17'),
    (4, 2, '2024-01-17'),
    (5, 1, '2024-01-17'),
    (6, 10, '2024-01-18'),
    (8, 4, '2024-01-18'),
    (10, 2, '2024-01-18'),
    (14, 7, '2024-01-19'),
    (16, 3, '2024-01-19'),
    (18, 6, '2024-01-20');

Realiza las siguientes consultas, y muestra el resultado obtenido:

    Mostrar todos los productos de la categoría "Bebidas".
        SELECT * FROM productos WHERE categoria = 'Bebidas';
            16|Café|Bebidas|5.0
            19|Botellas de Agua|Bebidas|1.0
            20|Cerveza|Bebidas|3.8

    Listar los productos ordenados por precio de forma descendente.
            SELECT * FROM productos ORDER BY precio DESC;
                 id  │       nombre       │ categoria │ precio │
                ├────┼────────────────────┼───────────┼────────┤
                │ 5  │ Pollo              │ Carnes    │ 5.5    │
                │ 16 │ Café               │ Bebidas   │ 5.0    │
                │ 15 │ Aceite de Oliva    │ Cocina    │ 4.5    │
                │ 9  │ Queso              │ Lácteos   │ 4.0    │
                │ 20 │ Cerveza            │ Bebidas   │ 3.8    │
                │ 10 │ Cereal             │ Desayuno  │ 3.5    │
                │ 4  │ Manzanas           │ Frutas    │ 3.0    │
                │ 13 │ Detergente         │ Limpieza  │ 2.8    │
                │ 1  │ Arroz              │ Alimentos │ 2.5    │
                │ 17 │ Sopa enlatada      │ Conservas │ 2.3    │
                │ 8  │ Tomates            │ Verduras  │ 2.2    │
                │ 7  │ Yogurt             │ Lácteos   │ 2.0    │
                │ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
                │ 2  │ Leche              │ Lácteos   │ 1.8    │
                │ 14 │ Galletas           │ Snacks    │ 1.7    │
                │ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
                │ 3  │ Pan                │ Panadería │ 1.2    │
                │ 18 │ Jabón de Baño      │ Higiene   │ 1.2    │
                │ 6  │ Huevos             │ Lácteos   │ 1.0    │
                │ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    

    Calcular el precio total de todos los productos en la tabla "productos".
        SELECT SUM(precio) FROM productos;
                ┌─────────────┐
                │ SUM(precio) │
                ├─────────────┤
                │ 52.5        │
                └─────────────┘

    Encontrar los productos con un nombre que contenga la letra 'a'.
        SELECT * FROM productos WHERE nombre LIKE '%a%';
                ┌────┬──────────────────┬───────────┬────────┐
                │ id │      nombre      │ categoria │ precio │
                ├────┼──────────────────┼───────────┼────────┤
                │ 1  │ Arroz            │ Alimentos │ 2.5    │
                │ 3  │ Pan              │ Panadería │ 1.2    │
                │ 4  │ Manzanas         │ Frutas    │ 3.0    │
                │ 8  │ Tomates          │ Verduras  │ 2.2    │
                │ 10 │ Cereal           │ Desayuno  │ 3.5    │
                │ 11 │ Papel Higiénico  │ Hogar     │ 1.5    │
                │ 14 │ Galletas         │ Snacks    │ 1.7    │
                │ 15 │ Aceite de Oliva  │ Cocina    │ 4.5    │
                │ 16 │ Café             │ Bebidas   │ 5.0    │
                │ 17 │ Sopa enlatada    │ Conservas │ 2.3    │
                │ 18 │ Jabón de Baño    │ Higiene   │ 1.2    │
                │ 19 │ Botellas de Agua │ Bebidas   │ 1.0    │
                │ 20 │ Cerveza          │ Bebidas   │ 3.8    │
                └────┴──────────────────┴───────────┴────────┘

    Obtener la cantidad total de productos vendidos en todas las fechas.
        SELECT SUM(cantidad) FROM ventas;
                ┌───────────────┐
                │ SUM(cantidad) │
                ├───────────────┤
                │ 43            │
                └───────────────┘

    Encontrar el producto más caro en cada categoría.
        SELECT categoria, MAX(precio) FROM productos GROUP BY categoria;
                ┌───────────┬─────────────┐
                │ categoria │ MAX(precio) │
                ├───────────┼─────────────┤
                │ Alimentos │ 2.5         │
                │ Bebidas   │ 5.0         │
                │ Carnes    │ 5.5         │
                │ Cocina    │ 4.5         │
                │ Conservas │ 2.3         │
                │ Desayuno  │ 3.5         │
                │ Frutas    │ 3.0         │
                │ Higiene   │ 2.0         │
                │ Hogar     │ 1.5         │
                │ Limpieza  │ 2.8         │
                │ Lácteos   │ 4.0         │
                │ Panadería │ 1.2         │
                │ Snacks    │ 1.7         │
                │ Verduras  │ 2.2         │
                └───────────┴─────────────┘


    Listar los productos que no han sido vendidos.
        SELECT * FROM productos WHERE id NOT IN (SELECT id_producto FROM ventas);
                ┌────┬────────────────────┬───────────┬────────┐
                │ id │       nombre       │ categoria │ precio │
                ├────┼────────────────────┼───────────┼────────┤
                │ 3  │ Pan                │ Panadería │ 1.2    │
                │ 7  │ Yogurt             │ Lácteos   │ 2.0    │
                │ 9  │ Queso              │ Lácteos   │ 4.0    │
                │ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
                │ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
                │ 13 │ Detergente         │ Limpieza  │ 2.8    │
                │ 15 │ Aceite de Oliva    │ Cocina    │ 4.5    │
                │ 17 │ Sopa enlatada      │ Conservas │ 2.3    │
                │ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
                │ 20 │ Cerveza            │ Bebidas   │ 3.8    │
                └────┴────────────────────┴───────────┴────────┘

    Calcular el precio promedio de los productos en la categoría "Snacks".
        SELECT AVG(precio) FROM productos WHERE categoria = 'Snacks';
                ┌─────────────┐
                │ AVG(precio) │
                ├─────────────┤
                │ 1.7         │
                └─────────────┘

    Encontrar los productos que han sido vendidos más de 5 veces.
     SELECT id_producto FROM ventas GROUP BY id_producto HAVING SUM (cantidad)>5;
                ┌─────────────┐
                │ id_producto │
                ├─────────────┤
                │ 6           │
                │ 14          │
                │ 18          │
                └─────────────┘
    


    Mostrar la fecha y la cantidad de ventas para cada producto.
            SELECT id_producto, fecha, SUM(cantidad) FROM ventas GROUP BY id_producto, fecha;
                ┌─────────────┬────────────┬───────────────┐
                │ id_producto │   fecha    │ SUM(cantidad) │
                ├─────────────┼────────────┼───────────────┤
                │ 1           │ 2024-01-17 │ 5             │
                │ 2           │ 2024-01-17 │ 3             │
                │ 4           │ 2024-01-17 │ 2             │
                │ 5           │ 2024-01-17 │ 1             │
                │ 6           │ 2024-01-18 │ 10            │
                │ 8           │ 2024-01-18 │ 4             │
                │ 10          │ 2024-01-18 │ 2             │
                │ 14          │ 2024-01-19 │ 7             │
                │ 16          │ 2024-01-19 │ 3             │
                │ 18          │ 2024-01-20 │ 6             │
                └─────────────┴────────────┴───────────────┘

    Encontrar los productos que tienen un precio menor o igual a 2.
            SELECT * FROM productos WHERE precio <= 2;
                ┌────┬────────────────────┬───────────┬────────┐
                │ id │       nombre       │ categoria │ precio │
                ├────┼────────────────────┼───────────┼────────┤
                │ 2  │ Leche              │ Lácteos   │ 1.8    │
                │ 3  │ Pan                │ Panadería │ 1.2    │
                │ 6  │ Huevos             │ Lácteos   │ 1.0    │
                │ 7  │ Yogurt             │ Lácteos   │ 2.0    │
                │ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
                │ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
                │ 14 │ Galletas           │ Snacks    │ 1.7    │
                │ 18 │ Jabón de Baño      │ Higiene   │ 1.2    │
                │ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
                └────┴────────────────────┴───────────┴────────┘

    Calcular la cantidad total de ventas para cada fecha.
            SELECT fecha, SUM(cantidad) FROM ventas GROUP BY fecha;
                ┌────────────┬───────────────┐
                │   fecha    │ SUM(cantidad) │
                ├────────────┼───────────────┤
                │ 2024-01-17 │ 11            │
                │ 2024-01-18 │ 16            │
                │ 2024-01-19 │ 10            │
                │ 2024-01-20 │ 6             │
                └────────────┴───────────────┘

    Listar los productos cuyo nombre comienza con la letra 'P'.
            SELECT * FROM productos WHERE nombre LIKE "P%";
                ┌────┬─────────────────┬───────────┬────────┐
                │ id │     nombre      │ categoria │ precio │
                ├────┼─────────────────┼───────────┼────────┤
                │ 3  │ Pan             │ Panadería │ 1.2    │
                │ 5  │ Pollo           │ Carnes    │ 5.5    │
                │ 11 │ Papel Higiénico │ Hogar     │ 1.5    │
                └────┴─────────────────┴───────────┴────────┘

    Obtener el producto más vendido en términos de cantidad.
         SELECT id_producto, SUM(cantidad) AS total_cantidad FROM ventas GROUP BY id_producto ORDER BY total_cantidad DESC LIMIT 1;

    Mostrar los productos que fueron vendidos en la fecha '2024-01-18'.

    Calcular el total de ventas para cada producto.
          SELECT p.id, p.nombre, SUM(v.cantidad) AS total_ventas FROM productos p LEFT JOIN ventas v ON p.id = v.id_producto GROUP BY p.id, p.nombre;

    Encontrar los productos con un precio entre 3 y 4.
         SELECT * FROM productos WHERE precio BETWEEN 3 AND 4;

    Listar los productos y sus categorías ordenados alfabéticamente por categoría.
          SELECT nombre, categoria FROM productos ORDER BY categoria, nombre;

    Calcular el precio total de los productos vendidos en la fecha '2024-01-19'.
          SELECT SUM(p.precio) AS precio_total FROM productos p JOIN ventas v ON p.id = v.id_producto WHERE v.fecha = '2024-01-19';

    Mostrar los productos que no pertenecen a la categoría "Higiene".
          SELECT * FROM productos WHERE categoria != 'Higiene';

    Encontrar la cantidad total de productos en cada categoría.
           
    Listar los productos que tienen un precio igual a la media de precios.

    Calcular el precio total de los productos vendidos en cada fecha.
          SELECT fecha, SUM(p.precio) AS precio_total FROM ventas v JOIN productos p ON v.id_producto = p.id GROUP BY fecha;

    Mostrar los productos con un nombre que termina con la letra 'o'.
            SELECT * FROM productos WHERE nombre LIKE "%o";

    Encontrar los productos que han sido vendidos en más de una fecha.
          SELECT id_producto, COUNT(DISTINCT fecha) AS num_fechas FROM ventas GROUP BY id_producto HAVING num_fechas > 1;

    Listar los productos cuya categoría comienza con la letra 'L'.
          SELECT * FROM productos WHERE precio = (SELECT AVG(precio) FROM productos);

    Calcular el total de ventas para cada producto en la fecha '2024-01-17'.
         SELECT categoria, COUNT(*) AS total_productos FROM productos GROUP BY categoria;

    Mostrar los productos cuyo nombre tiene al menos 5 caracteres.
          
    Encontrar los productos que tienen un precio superior al precio máximo en la tabla "productos".
