/*
JOIN Statement:
    Una cláusula JOIN se utiliza para combinar filas de dos o más tablas, en función de una columna relacionada entre ellas.

    Veamos una selección de la tabla "Pedidos":

        OrderID	CustomerID	OrderDate

        10308	    2	    1996-09-18
        10309	    37	    1996-09-19
        10310   	77	    1996-09-20

    Luego, mire una selección de la tabla "Clientes":

        CustomerID	CustomerName	                ContactName	     Country

        1	        Alfreds Futterkiste	            Maria Anders	 Germany
        2	Ana Trujillo Emparedados y helados	    Ana Trujillo	 Mexico
        3	    Antonio Moreno Taquería	            Antonio Moreno	 Mexico

    Observe que la columna "CustomerID" en la tabla "Pedidos" hace referencia al "CustomerID" en la tabla "Clientes". La relación entre las dos tablas anteriores es la columna "CustomerID".

    Luego, podemos crear la siguiente declaración SQL (que contiene un INNER JOIN), que selecciona registros que tienen valores coincidentes en ambas tablas:

    Ejemplo:*/
    SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
    FROM Orders
    INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;/*

    y producirá algo como esto:         
    
        OrderID	             CustomerName	                    OrderDate
        
        10308	    Ana Trujillo Emparedados y helados	        9/18/1996
        10365	    Antonio Moreno Taquería             	    11/27/1996
        10383	    Around the Horn	                            12/16/1996
        10355	    Around the Horn	                            11/15/1996
        10278	    Berglunds snabbköp                  	    8/12/1996

Diferentes tipos de JOIN SQL
    Estos son los diferentes tipos de JOIN en SQL:

    (INNER) JOIN: Devuelve registros que tienen valores coincidentes en ambas tablas
    LEFT (OUTER) JOIN: Devuelve todos los registros de la tabla de la izquierda y los registros coincidentes de la tabla de la derecha.
    RIGHT (OUTER) JOIN: Devuelve todos los registros de la tabla derecha y los registros coincidentes de la tabla izquierda
    FULL (OUTER) JOIN: Devuelve todos los registros cuando hay una coincidencia en la tabla izquierda o derecha
*/