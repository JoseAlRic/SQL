/*
INNER JOIN Statement:
    La palabra clave INNER JOIN selecciona registros que tienen valores coincidentes en ambas tablas.

    Veamos una selección de la tabla Productos :

        ProductID	ProductName	CategoryID	Price

        1	            Chais	    1	     18
        2	            Chang	    1	     19
        3	        Aniseed Syrup	2	     10

    Y una selección de la tabla Categorías :

        CategoryID	CategoryName	                    Description

        1	            Beverages	            Soft drinks, coffees, teas, beers, and ales
        2	            Condiments	            Sweet and savory sauces, relishes, spreads, and seasonings
        3	            Confections	            Desserts, candies, and sweet breads

    Uniremos la tabla Productos con la tabla Categorías, utilizando el CategoryIDcampo de ambas tablas:

    Ejemplo: Únir Productos y Categorías con la palabra clave INNER JOIN:*/

        SELECT ProductID, ProductName, CategoryName
        FROM Products
        INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;/*

    Nota: La palabra clave INNER JOIN devuelve solo filas que coinciden en ambas tablas. Lo que significa que si tiene un producto sin CategoryID 
    o con un CategoryID que no está presente en la tabla Categorías, ese registro no se devolverá en el resultado.

Sintaxis*/
    SELECT column_name(s)
    FROM table1
    INNER JOIN table2
    ON table1.column_name = table2.column_name;/*

Nombrar las columnas
    Es una buena práctica incluir el nombre de la tabla al especificar columnas en la declaración SQL.

    Ejemplo: Especifique los nombres de las tablas:*/
    
        SELECT Products.ProductID, Products.ProductName, Categories.CategoryName
        FROM Products
        INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;/*

    El ejemplo anterior funciona sin especificar nombres de tablas, porque ninguno de los nombres de columnas especificados está presente en ambas tablas. 
    Si intenta incluirlo CategoryIDen la declaración SELECT, obtendrá un error si no especifica el nombre de la tabla (porque CategoryID está presente en ambas tablas).

JOIN o INNER JOIN
    JOIN y INNER JOIN devolverá el mismo resultado.

    INNER es el tipo de unión predeterminado para JOIN, por lo que cuando escribe, JOIN el analizador realmente escribe INNER JOIN.

    Ejemplo: JOIN es lo mismo que INNER JOIN:*/
   
        SELECT Products.ProductID, Products.ProductName, Categories.CategoryName
        FROM Products
        JOIN Categories ON Products.CategoryID = Categories.CategoryID;/*

JOIN a Tres Tablas
   
    Ejemplo: La siguiente declaración SQL selecciona todos los pedidos con información del cliente y del remitente:*/
    SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
    FROM ((Orders
    INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
    INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);
