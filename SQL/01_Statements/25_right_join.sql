/*
RIGHT JOIN Statement:
    La palabra clave RIGHT JOIN devuelve todos los registros de la tabla derecha (tabla2) y los registros coincidentes de la tabla izquierda (tabla1). 
    El resultado es 0 registros del lado izquierdo, si no hay coincidencia.

Sintaxis*/
    SELECT column_name(s)
    FROM table1
    RIGHT JOIN table2
    ON table1.column_name = table2.column_name;/*

    Nota: En algunas bases de datos RIGHT JOIN se llama RIGHT OUTER JOIN.

Base de datos
    En este tutorial usaremos la conocida base de datos de muestra Northwind.

    A continuación se muestra una selección de la tabla "Pedidos":

        OrderID	CustomerID	EmployeeID	OrderDate	ShipperID

        10308	    2	        7	    1996-09-18	    3
        10309   	37	        3	    1996-09-19	    1
        10310	    77      	8	    1996-09-20	    2

    Y una selección de la tabla "Empleados":

        EmployeeID	LastName	FirstName	BirthDate	Photo

        1	        Davolio	      Nancy	    12/8/1968	EmpID1.pic
        2	        Fuller	      Andrew	2/19/1952	EmpID2.pic
        3	        Leverling	  Janet	    8/30/1963	EmpID3.pic

    Ejemplo: La siguiente declaración SQL devolverá todos los empleados y cualquier pedido que hayan realizado:*/
        SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
        FROM Orders
        RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
        ORDER BY Orders.OrderID;/*

    Nota: La palabra clave RIGHT JOIN devuelve todos los registros de la tabla derecha (Empleados), incluso si no hay coincidencias en la tabla izquierda (Pedidos).