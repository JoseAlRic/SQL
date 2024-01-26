/*
HAVING Statement:
    La cláusula HAVING se agregó a SQL porque la palabra clave WHERE no se puede usar con funciones agregadas.

Sintaxis*/
    SELECT column_name(s)
    FROM table_name
    WHERE condition
    GROUP BY column_name(s)
    HAVING condition
    ORDER BY column_name(s);/*

Base de datos:
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country
        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden


    Ejemplo 1: La siguiente declaración SQL enumera la cantidad de clientes en cada país. Incluya solo países con más de 5 clientes:*/

        SELECT COUNT(CustomerID), Country
        FROM Customers
        GROUP BY Country
        HAVING COUNT(CustomerID) > 5;/*

    Ejemplo 2: La siguiente declaración SQL enumera la cantidad de clientes en cada país, ordenados de mayor a menor (solo incluya países con más de 5 clientes):*/

        SELECT COUNT(CustomerID), Country
        FROM Customers
        GROUP BY Country
        HAVING COUNT(CustomerID) > 5
        ORDER BY COUNT(CustomerID) DESC;/*

    Base de datos de demostración
        A continuación se muestra una selección de la tabla "Pedidos" en la base de datos de muestra de Northwind:

            OrderID	CustomerID	EmployeeID	OrderDate	ShipperID

            10248	    90	        5	    1996-07-04	    3
            10249	    81      	6	    1996-07-05  	1
            10250	    34	        4	    1996-07-08	    2

        Y una selección de la tabla "Empleados":

            EmployeeID	  LastName	    FirstName	  BirthDate	      Photo	        Notes
            
            1	            Davolio	      Nancy	     1968-12-08 	EmpID1.pic	Education includes a BA....
            2	            Fuller  	  Andrew	 1952-02-19 	EmpID2.pic	Andrew received his BTS....
            3           	Leverling	  Janet	     1963-08-30	    EmpID3.pic	Janet has a BS degree....

    Ejemplo 3: La siguiente declaración SQL enumera los empleados que han registrado más de 10 pedidos:*/

        SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
        FROM (Orders
        INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
        GROUP BY LastName
        HAVING COUNT(Orders.OrderID) > 10;/*

    Ejemplo 4: La siguiente sentencia SQL indica si los empleados "Davolio" o "Fuller" han registrado más de 25 pedidos:*/

        SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
        FROM Orders
        INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
        WHERE LastName = 'Davolio' OR LastName = 'Fuller'
        GROUP BY LastName
        HAVING COUNT(Orders.OrderID) > 25;