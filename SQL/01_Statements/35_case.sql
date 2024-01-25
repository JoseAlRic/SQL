/*
CASE Statement:
    La expresión CASE pasa por condiciones y devuelve un valor cuando se cumple la primera condición (como una declaración si-entonces-si no). 
    Entonces, una vez que una condición es verdadera, dejará de leer y devolverá el resultado. Si ninguna condición es verdadera, devuelve el 
    valor de la cláusula ELSE.

    Si no hay ninguna parte ELSE y ninguna condición es verdadera, devuelve NULL.

Sintaxis*/
    CASE
        WHEN condition1 THEN result1
        WHEN condition2 THEN result2
        WHEN conditionN THEN resultN
        ELSE result
    END;/*

Base de datos
    A continuación se muestra una selección de la tabla "OrderDetails" en la base de datos de muestra de Northwind:

        OrderDetailID	OrderID	    ProductID	Quantity
        1	            10248	        11	        12
        2	            10248	        42      	10
        3	            10248	        72        	5
        4	            10249	        14	        9
        5	            10249	        51	        40

    Ejemplo 1: El siguiente SQL pasa por las condiciones y devuelve un valor cuando se cumple la primera condición:*/

        SELECT OrderID, Quantity,
        CASE
            WHEN Quantity > 30 THEN 'The quantity is greater than 30'
            WHEN Quantity = 30 THEN 'The quantity is 30'
            ELSE 'The quantity is under 30'
        END AS QuantityText
        FROM OrderDetails;/*

    Ejemplo 2:E l siguiente SQL ordenará a los clientes por ciudad. Sin embargo, si la ciudad es NULL, ordene por país:*/

        SELECT CustomerName, City, Country
        FROM Customers
        ORDER BY
        (CASE
            WHEN City IS NULL THEN Country
            ELSE City
        END);