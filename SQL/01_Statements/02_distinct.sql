
/*
SELECT DISTINCT Statement:
    La declaración SELECT DISTINCT se utiliza para devolver sólo valores distintos (diferentes).


Ejemplo
    Seleccione todos los diferentes países de la tabla "Customers":*/
    SELECT DISTINCT Country FROM Customers;/*
    Dentro de una tabla, una columna suele contener muchos valores duplicados; y a veces solo desea enumerar los valores diferentes (distintos).

Sintaxis*/
    SELECT DISTINCT column1, column2, ...
    FROM table_name;/*

Base de datos 
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country
        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden

SELECT Ejemplo sin DISTINCT
    Si omite la DISTINCT palabra clave, la declaración SQL devuelve el valor "País" de todos los registros de la tabla "Clientes":*/
    SELECT Country FROM Customers;/*

COUNT DISTINCT
    Al usar la palabra clave*/ DISTINCT /*en una función llamada*/ COUNT/*, podemos devolver el número de países diferentes.*/
    SELECT COUNT(DISTINCT Country) FROM Customers;
    
