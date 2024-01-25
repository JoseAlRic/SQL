/*
SELECT TOP Statement:
    La cláusula SELECT TOP se utiliza para especificar el número de registros a devolver.

    La cláusula SELECT TOP es útil en tablas grandes con miles de registros. Devolver una gran cantidad de registros puede afectar el rendimiento.

    Ejemplo: Seleccione solo los primeros 3 registros de la tabla Clientes:*/

    SELECT TOP 3 * FROM Customers;/*
    Nota: No todos los sistemas de bases de datos admiten la cláusula SELECT TOP. MySQL admite la cláusula LIMIT para seleccionar un número limitado de registros, mientras que Oracle usa y 
    . FETCH FIRST n ROWS ONLYROWNUM

Sintaxis de SQL Server/MS Access:*/

    SELECT TOP number|percent column_name(s)
    FROM table_name
    WHERE condition;/*

Sintaxis de MySQL:*/

    SELECT column_name(s)
    FROM table_name
    WHERE condition
    LIMIT number;/*

Sintaxis de Oracle 12:*/

    SELECT column_name(s)
    FROM table_name
    ORDER BY column_name(s)
    FETCH FIRST number ROWS ONLY;/*

Sintaxis anterior de Oracle:*/

    SELECT column_name(s)
    FROM table_name
    WHERE ROWNUM <= number;/*

Sintaxis anterior de Oracle (con ORDER BY):*/

    SELECT *
    FROM (SELECT column_name(s) FROM table_name ORDER BY column_name(s))
    WHERE ROWNUM <= number;/*

Base de datos
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country

        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden

LIMIT
    La siguiente declaración SQL muestra el ejemplo equivalente para MySQL:
    Ejemplo: Seleccione los primeros 3 registros de la tabla Clientes:*/

    SELECT * FROM Customers
    LIMIT 3;/*

FETCH FIRST
    La siguiente declaración SQL muestra el ejemplo equivalente para Oracle:
    Ejemplo: Seleccione los primeros 3 registros de la tabla Clientes:*/

    SELECT * FROM Customers
    FETCH FIRST 3 ROWS ONLY;/*

TOP PERCENT
    Ejemplo: La siguiente declaración SQL selecciona el primer 50% de los registros de la tabla "Clientes" (para SQL Server/MS Access):*/
    SELECT TOP 50 PERCENT * FROM Customers;/*

    Ejemplo: La siguiente declaración SQL muestra el ejemplo equivalente para Oracle:*/
    SELECT * FROM Customers
    FETCH FIRST 50 PERCENT ROWS ONLY;/*

ADD a WHERE CLAUSE
    Ejemplo: La siguiente instrucción SQL selecciona los primeros tres registros de la tabla "Clientes", donde el país es "Alemania" (para SQL Server/MS Access):*/
    SELECT TOP 3 * FROM Customers
    WHERE Country='Germany';/*

    Ejemplo: La siguiente declaración SQL muestra el ejemplo equivalente para MySQL:*/
    SELECT * FROM Customers
    WHERE Country='Germany'
    LIMIT 3;/*

    Ejemplo: La siguiente declaración SQL muestra el ejemplo equivalente para Oracle:*/
    SELECT * FROM Customers
    WHERE Country='Germany'
    FETCH FIRST 3 ROWS ONLY;/*

ADD the ORDER BY Keyword
    Agregue la palabra clave ORDER BY cuando desee ordenar el resultado y devuelva los primeros 3 registros del resultado ordenado.

    Para SQL Server y MS Access:
    Ejemplo: Ordene el resultado alfabéticamente por CustomerName y devuelva los primeros 3 registros:*/
    SELECT TOP 3 * FROM Customers
    ORDER BY CustomerName DESC;/*
    
    Ejemplo: La siguiente declaración SQL muestra el ejemplo equivalente para MySQL:*/
    SELECT * FROM Customers
    ORDER BY CustomerName DESC
    LIMIT 3;/*

    Ejemplo: La siguiente declaración SQL muestra el ejemplo equivalente para Oracle:*/
    SELECT * FROM Customers
    ORDER BY CustomerName DESC
    FETCH FIRST 3 ROWS ONLY;