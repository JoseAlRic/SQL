/*
AVG() Statement:
    La función AVG() devuelve el valor promedio de una columna numérica.

    Ejemplo: Encuentre el precio promedio de todos los productos:*/
        SELECT AVG(Price)
        FROM Products;/*

    Nota: los valores NULL se ignoran.

Sintaxis*/
    SELECT AVG(column_name)
    FROM table_name
    WHERE condition;/*

Base de datos
    A continuación se muestra una selección de la tabla Productos utilizada en los ejemplos:

        ProductID	ProductName	            SupplierID	CategoryID	        Unit	           Price
        1	            Chais	                1	        1	       10 boxes x 20 bags	    18
        2	            Chang	                1	        1	       24 - 12 oz bottles	    19
        3	        Aniseed Syrup	            1	        2	       12 - 550 ml bottles  	10
        4	   Chef Anton's Cajun Seasoning	    2	        2	        48 - 6 oz jars	        22
        5	   Chef Anton's Gumbo Mix	        2	        2	            36 boxes	       21.35

Agregar una cláusula WHERE
    Puede agregar una cláusula WHERE para especificar condiciones:

    Ejemplo: Devuelve el precio medio de los productos de la categoría 1:*/
        SELECT AVG(Price)
        FROM Products
        WHERE CategoryID = 1;/*

Utilice un alias
    Asigne un nombre a la columna AVG utilizando la ASpalabra clave.

    Ejemplo: Nombra la columna "precio medio":*/
        SELECT AVG(Price) AS [average price]
        FROM Products;/*

Más alto que el promedio
    Para enumerar todos los registros con un precio superior al promedio, podemos usar la función AVG() en una subconsulta:

    Ejemplo: Devolver todos los productos con un precio superior al precio medio:*/
        SELECT * FROM Products
        WHERE price > (SELECT AVG(price) FROM Products);
