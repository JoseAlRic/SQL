/*
AS (Alias) Statement: 
    Los alias SQL se utilizan para dar un nombre temporal a una tabla o columna de una tabla.
    Los alias se utilizan a menudo para hacer que los nombres de las columnas sean más legibles.
    Un alias solo existe mientras dure esa consulta.
    Se crea un alias con la palabra clave AS.

    Ejemplo*/
        SELECT CustomerID AS ID
        FROM Customers;/*

    AS es opcional
    En realidad, en la mayoría de los lenguajes de bases de datos, puedes omitir la palabra clave AS y obtener el mismo resultado:

    Ejemplo*/
        SELECT CustomerID ID
        FROM Customers;/*

Sintaxis
    Cuando se utiliza alias en la columna:*/
    SELECT column_name AS alias_name
    FROM table_name;/*

Base de datos de demostración
    A continuación se muestra una selección de las tablas Clientes y Pedidos utilizadas en los ejemplos:

        Clientes
        CustomerID	            CustomerName	                 ContactName     	        Address	             City	        PostalCode  	Country

        1                   Alfreds Futterkiste	                 Maria Anders	        Obere Str. 57	        Berlin          	12209	    Germany
        2           Ana Trujillo Emparedados y helados	        Ana Trujillo	Avda. de la Constitución 2222	México D.F.	        05021	    Mexico
        3               Antonio Moreno Taquería	                Antonio Moreno	        Mataderos 2312	        México D.F.	        05023	    Mexico

        Pedidos
        OrderID	CustomerID	EmployeeID	OrderDate	ShipperID

        10248	    90	        5	       7/4/1996	    3
        10249	    81      	6	       7/5/1996	    1
        10250	    34      	4          7/8/1996	    2

Cuando se utiliza alias en la tabla:*/

    SELECT column_name(s)
    FROM table_name AS alias_name;/*

Alias para columnas
    Ejemplo: La siguiente instrucción SQL crea dos alias, uno para la columna CustomerID y otro para la columna CustomerName:*/
        SELECT CustomerID AS ID, CustomerName AS Customer
        FROM Customers;/*

Usar alias con carácter de espacio
    Ejemplo: Si desea que su alias contenga uno o más espacios, como " My Great Products", encierre su alias entre corchetes o comillas dobles.
    Uso de [corchetes] para alias con caracteres de espacio:*/
        SELECT ProductName AS [My Great Products]
        FROM Products;/*

    Ejemplo: Uso de "comillas dobles" para alias con caracteres de espacio:*/
        SELECT ProductName AS "My Great Products"
        FROM Products;/*

    Nota: Algunos sistemas de bases de datos permiten tanto [] como "", y otros solo permiten uno de ellos.

Concatenar columnas
   
    Ejemplo:  La siguiente declaración SQL crea un alias denominado "Dirección" que combina cuatro columnas (Dirección, Código postal, Ciudad y País):*/
        SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
        FROM Customers;/*

    Nota: Para que la declaración SQL anterior funcione en MySQL, utilice lo siguiente:

    Ejemplo de MySQL*/
        SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
        FROM Customers;/*

    Nota: Para que la declaración SQL anterior funcione en Oracle, utilice lo siguiente:

    Ejemplo de oráculo*/
        SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address
        FROM Customers;/*

Alias para tablas
    Se aplican las mismas reglas cuando desea utilizar un alias para una tabla.
    Ejemplo: En su lugar, consulte la tabla Clientes como Personas:*/
        SELECT * FROM Customers AS Persons;/*
    Puede parecer inútil utilizar alias en tablas, pero cuando utiliza más de una tabla en sus consultas, las declaraciones SQL pueden acortarse.

    Ejemplo:  La siguiente declaración SQL selecciona todos los pedidos del cliente con CustomerID=4 (Around the Horn). Usamos las tablas "Clientes" y "Pedidos", y les damos los alias de 
    tabla "c" y "o" respectivamente (aquí usamos alias para acortar el SQL):*/
        SELECT o.OrderID, o.OrderDate, c.CustomerName
        FROM Customers AS c, Orders AS o
        WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;/*

    Ejemplo: La siguiente declaración SQL es la misma que la anterior, pero sin alias:*/
        SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
        FROM Customers, Orders
        WHERE Customers.CustomerName='Around the Horn' AND Customers.CustomerID=Orders.CustomerID;/*

Los alias pueden resultar útiles cuando:

    Hay más de una tabla involucrada en una consulta.
    Las funciones se utilizan en la consulta.
    Los nombres de las columnas son grandes o no muy legibles.
    Se combinan dos o más columnas.