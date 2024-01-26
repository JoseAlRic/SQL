/*
SELF JOIN Statement:
    Una SELF JOIN es una unión normal, pero la tabla está unida consigo misma.

Sintaxis*/
    SELECT column_name(s)
    FROM table1 T1, table1 T2
    WHERE condition;/*

    T1 y T2 son alias de tabla diferentes para la misma tabla.

Base de datos 
    En este tutorial usaremos la conocida base de datos de muestra Northwind.

    A continuación se muestra una selección de la tabla "Clientes":

        CustomerID	            CustomerName	                ContactName	          Address	                      City	        PostalCode	Country

        1                   Alfreds Futterkiste             	Maria Anders	    Obere Str. 57	                Berlin	           12209	Germany
        2	            Ana Trujillo Emparedados y helados	    Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	       05021	Mexico
        3	                  Antonio Moreno Taquería	        Antonio Moreno	    Mataderos 2312	                México D.F.	       05023	Mexico

    Ejemplo: La siguiente declaración SQL coincide con clientes que son de la misma ciudad:*/
    
        SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
        FROM Customers A, Customers B
        WHERE A.CustomerID <> B.CustomerID
        AND A.City = B.City
        ORDER BY A.City;