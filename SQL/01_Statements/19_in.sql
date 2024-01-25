/*
Statement IN:
    El operador IN le permite especificar múltiples valores en una cláusula WHERE.
    El operador IN es una abreviatura de múltiples condiciones OR.

    Ejemplo: Devolver todos los clientes de "Alemania", "Francia" o "Reino Unido"*/
        SELECT * FROM Customers
        WHERE Country IN ('Germany', 'France', 'UK');/*

Sintaxis*/
    SELECT column_name(s)
    FROM table_name
    WHERE column_name IN (value1, value2, ...);/*


Base de datos:
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country
        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden

NOT IN
    Al usar la palabra clave NOT delante del operador IN, devuelve todos los registros que NO son ninguno de los valores de la lista.

    Ejemplo: Devolver a todos los clientes que NO sean de "Alemania", "Francia" o "Reino Unido":*/
        SELECT * FROM Customers
        WHERE Country NOT IN ('Germany', 'France', 'UK');/*

IN (SELECT)
    También puede utilizar con una subconsulta IN en la cláusula WHERE.
    Con una subconsulta puede devolver todos los registros de la consulta principal que están presentes en el resultado de la subconsulta.

    Ejemplo: Devuelve todos los clientes que tienen un pedido en la tabla Pedidos :*/
        SELECT * FROM Customers
        WHERE CustomerID IN (SELECT CustomerID FROM Orders);/*

NOT IN (SELECT)
    El resultado del ejemplo anterior arrojó 74 registros, lo que significa que hay 17 clientes que no han realizado ningún pedido.
    Comprobemos si esto es correcto utilizando el operador NOT IN.

    Ejemplo: Devuelve todos los clientes que NO han realizado ningún pedido en la tabla Pedidos :*/
        SELECT * FROM Customers
        WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);