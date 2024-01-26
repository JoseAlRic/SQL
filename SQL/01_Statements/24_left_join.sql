/*
LEFT JOIN Statement:
    La palabra clave LEFT JOIN devuelve todos los registros de la tabla de la izquierda (tabla1) y los registros coincidentes de la tabla de la derecha (tabla2). 
    El resultado es 0 registros del lado derecho, si no hay coincidencia.

Sintaxis*/
    SELECT column_name(s)
    FROM table1
    LEFT JOIN table2
    ON table1.column_name = table2.column_name;/*

    Nota: En algunas bases de datos, LEFT JOIN se llama LEFT OUTER JOIN.

Base de datos
    En este tutorial usaremos la conocida base de datos de muestra Northwind.

    A continuación se muestra una selección de la tabla "Clientes":

        CustomerID	                 CustomerName	            ContactName	                Address	                City            	PostalCode	        Country

        1                           Alfreds Futterkiste	        Maria Anders	            Obere Str. 57	        Berlin	                12209	        Germany
        2	                Ana Trujillo Emparedados y helados	Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	                    Antonio Moreno Taquería     	Antonio Moreno	            Mataderos 2312         	México D.F.         	05023	        Mexico

    Y una selección de la tabla "Pedidos":

        OrderID	CustomerID	EmployeeID	OrderDate	ShipperID

        10308	    2	        7	    1996-09-18	    3
        10309	    37      	3	    1996-09-19     	1
        10310	    77      	8   	1996-09-20  	2

    Ejemplo: La siguiente declaración SQL seleccionará todos los clientes y cualquier pedido que puedan tener:*/
        SELECT Customers.CustomerName, Orders.OrderID
        FROM Customers
        LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
        ORDER BY Customers.CustomerName;/*

    Nota: La LEFT JOINpalabra clave devuelve todos los registros de la tabla izquierda (Clientes), incluso si no hay coincidencias en la tabla derecha (Pedidos).