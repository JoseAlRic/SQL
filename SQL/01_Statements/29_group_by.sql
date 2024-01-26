/*
GROUP BY Statement:
    El extracto GROUP BY agrupa filas que tienen los mismos valores en filas de resumen, como "buscar el número de clientes en cada país".

    La declaración GROUP BY se usa a menudo con funciones agregadas ( COUNT(),,,,, MAX()) para agrupar el conjunto MIN()de resultados en una o más columnas.SUM()AVG()

Sintaxis*/
    SELECT column_name(s)
    FROM table_name
    WHERE condition
    GROUP BY column_name(s)
    ORDER BY column_name(s);/*

Base de datos:
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country
        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden

    Ejemplos: 1. La siguiente declaración SQL enumera la cantidad de clientes en cada país:*/
        SELECT COUNT(CustomerID), Country
        FROM Customers
        GROUP BY Country;/*

    Ejemplo 2: La siguiente declaración SQL enumera la cantidad de clientes en cada país, ordenados de mayor a menor:*/
        SELECT COUNT(CustomerID), Country
        FROM Customers
        GROUP BY Country
        ORDER BY COUNT(CustomerID) DESC;/*

    Base de datos de demostración
        A continuación se muestra una selección de la tabla "Pedidos" en la base de datos de muestra de Northwind:

            OrderID	CustomerID	EmployeeID	OrderDate	ShipperID
            
            10248	    90	        5	    1996-07-04  	3
            10249	    81	        6	    1996-07-05	    1
            10250	    34      	4	    1996-07-08	    2

        Y una selección de la tabla "Remitentes":

            ShipperID	ShipperName

            1	        Speedy Express
            2	        United Package
            3	        Federal Shipping

    Ejemplo 3: La siguiente declaración SQL enumera la cantidad de pedidos enviados por cada remitente:*/
        SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
        LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
        GROUP BY ShipperName;