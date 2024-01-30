/*
SELECT Statement:
        La declaración SELECT se utiliza para seleccionar datos de una base de datos.

    Ejemplo
        Datos de devolución de la tabla Customers:*/
        SELECT CustomerName, City FROM Customers;/*

    Sintaxis*/
        SELECT column1, column2, ...
        FROM table_name;/*

        Aquí, columna1, columna2, ... son los nombres de los campos de la tabla de la que desea seleccionar datos. 
        table_name representa el nombre de la tabla de la que desea seleccionar datos.

Base de datos:
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country
        1                Alfreds Futterkiste	                  Maria Anders	          Obere Str. 57	                 Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	         Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	        05021	        Mexico
        3	          Antonio Moreno Taquería	         Antonio Moreno	          Mataderos 2312	        México D.F.	        05023	        Mexico
        4                   Around the Horn	                  Thomas Hardy	          120 Hanover Sq.	          London	        WA1 1DP	          UK
        5	              Berglunds snabbköp	       Christina Berglund	   Berguvsvägen 8	          Luleå	                S-958 22	 Sweden

Seleccione TODAS las columnas
    Si desea devolver todas las columnas, sin especificar cada nombre de columna, puede utilizar la sintaxis  SELECT *:

    Ejemplo: Devuelve todas las columnas de la tabla Customers:*/
    SELECT * FROM Customers;
