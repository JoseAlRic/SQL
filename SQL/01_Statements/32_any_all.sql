/*
ANY - ALL Statement:
    Los operadores ANY y ALL le permiten realizar una comparación entre un valor de una sola columna y un rango de otros valores.

El operador ANY:
    Devuelve un valor booleano como resultado
    Devuelve VERDADERO si CUALQUIERA de los valores de la subconsulta cumple la condición
    ANY significa que la condición será verdadera si la operación es verdadera para cualquiera de los valores del rango.

    Sintaxis:*/
        SELECT column_name(s)
        FROM table_name
        WHERE column_name operator ANY
        (SELECT column_name
        FROM table_name
        WHERE condition);/*

    Nota: El operador debe ser un operador de comparación estándar (=, <>, !=, >, >=, < o <=).

El operador ALL:
    Devuelve un valor booleano como resultado
    Sevuelve VERDADERO si TODOS los valores de la subconsulta cumplen la condición
    Se usa SELECT con declaraciones WHERE y HAVING
    ALL significa que la condición será verdadera solo si la operación es verdadera para todos los valores del rango. 

    Sintaxis: ALL con SELECT*/
        SELECT ALL column_name(s)
        FROM table_name
        WHERE condition;/*
        
    Sintaxis: ALL con WHERE o HAVING*/
        SELECT column_name(s)
        FROM table_name
        WHERE column_name operator ALL
            (SELECT column_name
            FROM table_name
            WHERE condition);/*
    
    Nota: El operador debe ser un operador de comparación estándar (=, <>, !=, >, >=, < o <=).

Base de datos de demostración
    A continuación se muestra una selección de la tabla "Productos" en la base de datos de muestra de Northwind:

        ProductID	ProductName	                SupplierID	CategoryID	        Unit	         Price

        1	            Chais	                    1	        1	    10 boxes x 20 bags	      18
        2	            Chang   	                1	        1	    24 - 12 oz bottles	      19
        3	        Aniseed Syrup	                1	        2	    12 - 550 ml bottles	      10
        4	Chef Anton's Cajun Seasoning	        2	        2	    48 - 6 oz jars	          22
        5	Chef Anton's Gumbo Mix	                2	        2	        36 boxes	        21.35
        6	Grandma's Boysenberry Spread	        3	        2	      12 - 8 oz jars	      25
        7	Uncle Bob's Organic Dried Pears	        3	        7         12 - 1 lb pkgs.	      30
        8	Northwoods Cranberry Sauce	            3	        2	      12 - 12 oz jars	      40
        9	Mishi Kobe Niku                     	4	        6       	18 - 500 g pkgs.	  97

    Y una selección de la tabla "Detalles del pedido" :

        OrderDetailID	OrderID	ProductID	Quantity

        1	              10248	    11	        12
        2	              10248 	42	        10
        3	              10248    	72	        5
        4	              10249	    14	        9
        5	              10249   	51	        40
        6	              10250 	41	        10
        7	              10250 	51	        35
        8	              10250	    65	        15
        9	              10251	    22	        6
        10	              10251	    57	        15

    Ejemplos 1: ANY
        La siguiente instrucción SQL enumera el Nombre del producto si encuentra CUALQUIER registro en la tabla Detalles del pedido que 
        tenga una Cantidad igual a 10 (esto devolverá VERDADERO porque la columna Cantidad tiene algunos valores de 10):*/

        SELECT ProductName
        FROM Products
        WHERE ProductID = ANY
            (SELECT ProductID
            FROM OrderDetails
            WHERE Quantity = 10);/*

    Ejemplo 2: ANY
        La siguiente instrucción SQL enumera el Nombre del producto si encuentra CUALQUIER registro en la tabla Detalles del pedido que tenga una 
        Cantidad mayor que 99 (esto devolverá VERDADERO porque la columna Cantidad tiene algunos valores mayores que 99):*/

        SELECT ProductName
        FROM Products
        WHERE ProductID = ANY
            (SELECT ProductID
            FROM OrderDetails
            WHERE Quantity > 99);/*

    Ejemplo 3: ANY
        La siguiente instrucción SQL enumera el Nombre del producto si encuentra CUALQUIER registro en la tabla Detalles del pedido que tenga una 
        Cantidad mayor que 1000 (esto devolverá FALSO porque la columna Cantidad no tiene valores mayores que 1000):*/

        SELECT ProductName
        FROM Products
        WHERE ProductID = ANY
            (SELECT ProductID
            FROM OrderDetails
            WHERE Quantity > 1000);/*

    Ejemplo 1: ALL
        La siguiente declaración SQL enumera TODOS los nombres de productos:*/

        SELECT ALL ProductName
        FROM Products
        WHERE TRUE;/*

    Ejemplo 2: ALL
        La siguiente instrucción SQL enumera el Nombre del producto si TODOS los registros en la tabla Detalles del pedido tienen una Cantidad igual a 10. 
        Por supuesto, esto devolverá FALSO porque la columna Cantidad tiene muchos valores diferentes (no solo el valor de 10):*/

        SELECT ProductName
        FROM Products
        WHERE ProductID = ALL
            (SELECT ProductID
            FROM OrderDetails
            WHERE Quantity = 10);