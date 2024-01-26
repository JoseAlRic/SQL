/*
BETWEEN Statement:
    El  operador BETWEEN selecciona valores dentro de un rango determinado. Los valores pueden ser números, texto o fechas.
    El operador BETWEEN es inclusivo: se incluyen los valores inicial y final. 

    Ejemplo: Selecciona todos los productos con un precio entre 10 y 20:*/
        SELECT * FROM Products
        WHERE Price BETWEEN 10 AND 20;/*

Sintaxis*/
    SELECT column_name(s)
    FROM table_name
    WHERE column_name BETWEEN value1 AND value2;*/*

Base de datos 
    A continuación se muestra una selección de la tabla Productos utilizada en los ejemplos:

        ProductID	ProductName	                SupplierID	CategoryID	   Unit	            Price

        1	            Chais	                    1	        1	  10 boxes x 20 bags  	  18
        2	            Chang	                    1	        1	   24 - 12 oz bottles	  19
        3	        Aniseed Syrup	                1	        2	  12 - 550 ml bottles	  10
        4	    Chef Anton's Cajun Seasoning	    2          	2	    48 - 6 oz jars     	  22
        5	    Chef Anton's Gumbo Mix	            2	        2	        36 boxes	     21.35

NOT BETWEEN

    Ejemplo: Para mostrar los productos fuera del rango del ejemplo anterior, utilice NOT BETWEEN:*/
        SELECT * FROM Products
        WHERE Price NOT BETWEEN 10 AND 20;/*

BETWEEN con IN
    
    Ejemplo: La siguiente declaración SQL selecciona todos los productos con un precio entre 10 y 20. Además, el ID de categoría debe ser 1, 2 o 3:*/
        SELECT * FROM Products
        WHERE Price BETWEEN 10 AND 20
        AND CategoryID IN (1,2,3);/*

BETWEEN valores de texto

    Ejemplo: La siguiente instrucción SQL selecciona alfabéticamente todos los productos con un ProductName entre Carnarvon Tigers y Mozzarella di Giovanni:*/
        SELECT * FROM Products
        WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
        ORDER BY ProductName;/*

    Ejemplo:  La siguiente declaración SQL selecciona todos los productos con un ProductName entre Carnarvon Tigers y Chef Anton's Cajun Seasoning:*/
        SELECT * FROM Products
        WHERE ProductName BETWEEN "Carnarvon Tigers" AND "Chef Anton's Cajun Seasoning"
        ORDER BY ProductName;/*

NOT BETWEEN valores de texto

    Ejemplo: La siguiente declaración SQL selecciona todos los productos con un ProductName que no esté entre Carnarvon Tigers y Mozzarella di Giovanni: */
        SELECT * FROM Products
        WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
        ORDER BY ProductName;/*

BETWEEN fechas

    Ejemplo: La siguiente instrucción SQL selecciona todos los pedidos con una fecha de pedido entre '01-julio-1996' y '31-julio-1996':*/
    SELECT * FROM Orders
    WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;/*

O:

    Ejemplo*/
    SELECT * FROM Orders
    WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';/*

Tabla de muestra
    A continuación se muestra una selección de la tabla Órdenes utilizada en los ejemplos:

        OrderID	CustomerID	EmployeeID	OrderDate	ShipperID

        10248	    90	        5	    7/4/1996	    3
        10249   	81	        6	    7/5/1996    	1
        10250	    34	        4   	7/8/1996	    2
        10251	    84	        3	    7/9/1996	    1
        10252   	76      	4	    7/10/1996	    2