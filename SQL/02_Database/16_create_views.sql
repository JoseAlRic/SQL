/*
CREATE VIEW
    En SQL, una vista es una tabla virtual basada en el conjunto de resultados de una declaración SQL.
    Una vista contiene filas y columnas, como una tabla real. Los campos de una vista son campos de una o más tablas reales 
    de la base de datos.

    Puede agregar sentencias y funciones SQL a una vista y presentar los datos como si provinieran de una sola tabla.

    Se crea una vista con la  declaración CREATE VIEW. 

    Sintaxis*/
        CREATE VIEW view_name AS
        SELECT column1, column2, ...
        FROM table_name
        WHERE condition;/*

    Nota: ¡ Una vista siempre muestra datos actualizados! El motor de base de datos recrea la vista cada vez que un usuario 
    la consulta.

    Ejemplo 1: El siguiente SQL crea una vista que muestra todos los clientes de Brasil:*/

        CREATE VIEW [Brazil Customers] AS
        SELECT CustomerName, ContactName
        FROM Customers
        WHERE Country = 'Brazil';/*

    Podemos consultar la vista anterior de la siguiente manera:*/

        SELECT * FROM [Brazil Customers];/*

    Ejemplo 2: El siguiente SQL crea una vista que selecciona cada producto en la tabla "Productos" con un precio superior 
    al precio promedio:*/

        CREATE VIEW [Products Above Average Price] AS
        SELECT ProductName, Price
        FROM Products
        WHERE Price > (SELECT AVG(Price) FROM Products);/*

    Podemos consultar la vista anterior de la siguiente manera:*/

        SELECT * FROM [Products Above Average Price];/*

Updating a View

    Una vista se puede actualizar con la declaración CREATE OR REPLACE VIEW.

    Sintaxis*/
        CREATE OR REPLACE VIEW view_name AS
        SELECT column1, column2, ...
        FROM table_name
        WHERE condition;/*

    Ejemplo 3: El siguiente SQL agrega la columna "Ciudad" a la vista "Clientes de Brasil":*/
        CREATE OR REPLACE VIEW [Brazil Customers] AS
        SELECT CustomerName, ContactName, City
        FROM Customers
        WHERE Country = 'Brazil';/*

Dropping a View

    Una vista se elimina con la DROP VIEW declaración.

    Sintaxis*/ 
        DROP VIEW view_name;/*

    Ejemplo 4: El siguiente SQL elimina la vista "Clientes de Brasil":*/

        DROP VIEW [Brazil Customers];
