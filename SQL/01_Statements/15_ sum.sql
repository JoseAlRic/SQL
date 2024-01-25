/*
SUM() Statement:
    La función SUM() devuelve la suma total de una columna numérica.

    Ejemplo: Devuelve la suma de todos los campos Quantity de la tabla OrderDetails:*/
    SELECT SUM(Quantity)
    FROM OrderDetails;/*

Sintaxis*/
    SELECT SUM(column_name)
    FROM table_name
    WHERE condition;/*

Base de datos
    A continuación se muestra una selección de la tabla OrderDetails utilizada en los ejemplos:

        OrderDetailID	OrderID	    ProductID	Quantity

        1	                10248	    11	        12
        2	                10248	    42	        10
        3	                10248	    72	        5
        4               	10249	    14	        9
        5	                10249	    51	        40

Agregar una cláusula WHERE
    Puede agregar una cláusula WHERE para especificar condiciones:

    Ejemplo: Devuelve el número de pedidos realizados para el producto con ProductID = 11:*/
        SELECT SUM(Quantity)
        FROM OrderDetails
        WHERE ProductId = 11;/*

Utilice un alias
    Asigne un nombre a la columna resumida utilizando la palabra clave AS.

    Ejemplo: Nombra la columna "total":*/
        SELECT SUM(Quantity) AS total
        FROM OrderDetails;/*

SUM() con una expresión
    El parámetro dentro de la función SUM() también puede ser una expresión.

    Si asumimos que cada producto de la columna OrderDetails cuesta  10 dólares, podemos encontrar las ganancias totales en dólares multiplicando cada cantidad por 10:

    Ejemplo: Utilice una expresión dentro de la función SUM():*/
        SELECT SUM(Quantity * 10)
        FROM OrderDetails;/*

    También podemos unir la tabla OrderDetails a la tabla Products para encontrar el monto real, en lugar de asumir que son 10 dólares:

    Ejemplo: Une OrderDetailscon Productsy usando la funcion SUM() para encontrar la cantidad total:*/
        SELECT SUM(Price * Quantity)
        FROM OrderDetails
        LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID;
