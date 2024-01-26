/*
EXISTS Statement:
    El operador EXISTS se utiliza para probar la existencia de cualquier registro en una subconsulta.

    El operador EXISTS devuelve VERDADERO si la subconsulta devuelve uno o más registros.

Sintaxis*/
    SELECT column_name(s)
    FROM table_name
    WHERE EXISTS
    (SELECT column_name FROM table_name WHERE condition);/*

Base de datos 
    A continuación se muestra una selección de la tabla "Productos" en la base de datos de muestra de Northwind:

        ProductID	ProductName	            SupplierID	CategoryID	       Unit	            Price

        1	            Chais	                1	        1	    10 boxes x 20 bags	    18
        2	            Chang	                1	        1	    24 - 12 oz bottles	    19
        3	        Aniseed Syrup              	1	        2	    12 - 550 ml bottles	    10
        4	Chef Anton's Cajun Seasoning	    2	        2	        48 - 6 oz jars	    22
        5	Chef Anton's Gumbo Mix	            2	        2	         36 boxes	        21.35

    Y una selección de la tabla "Proveedores":

        SupplierID	        SupplierName	            ContactName         	Address         	City	        PostalCode	        Country

        1	                Exotic Liquid	           Charlotte Cooper	     49 Gilbert St.	        London	          EC1 4SD	            UK
        2	            New Orleans Cajun Delights	    Shelley Burke	     P.O. Box 78934      	New Orleans	       70117	            USA
        3	            Grandma Kelly's Homestead	    Regina Murphy	     707 Oxford Rd.	        Ann Arbor	       48104	            USA
        4	                Tokyo Traders	          Yoshi Nagase	     9-8 Sekimai Musashino-shi	Tokyo	            100              	Japan


    Ejemplo 1: La siguiente declaración SQL devuelve VERDADERO y enumera los proveedores con un precio de producto inferior a 20:*/

        SELECT SupplierName
        FROM Suppliers
        WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);/*

    Ejemplo 2: La siguiente declaración SQL devuelve VERDADERO y enumera los proveedores con un precio de producto igual a 22:*/

        SELECT SupplierName
        FROM Suppliers
        WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price = 22);