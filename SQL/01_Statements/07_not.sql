/*
NOT Statement:   
    El operador NOT se utiliza en combinación con otros operadores para dar el resultado opuesto, también llamado resultado negativo.
    En el extracto seleccionado a continuación queremos devolver a todos los clientes que NO son de España:

    Ejemplo: Selecciona sólo los clientes que NO son de España:*/
    SELECT * FROM Customers
    WHERE NOT Country = 'Spain';/*
    En el ejemplo anterior, el operador NOT se usa en combinación con el operador =, pero se puede usar en combinación con otros operadores lógicos y/o de comparación.

Sintaxis*/
    SELECT column1, column2, ...
    FROM table_name
    WHERE NOT condition;/*

Base de datos
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country
        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden


NOT LIKE
    Ejemplo: Seleccione clientes que no comiencen con la letra 'A':*/

    SELECT * FROM Customers
    WHERE CustomerName 
    NOT LIKE 'A%';/*

NOT BETWEEN
    Ejemplo: Seleccione clientes con un ID de cliente que no esté entre 10 y 60:*/

    SELECT * FROM Customers
    WHERE CustomerID 
    NOT BETWEEN 10 AND 60;/*

NOT IN
    Ejemplo: Seleccione clientes que no sean de París o Londres:*/

    SELECT * FROM Customers
    WHERE City 
    NOT IN ('Paris', 'London');/*

NOT mayor que
    Ejemplo: Seleccione clientes con un CustomerId no sea mayor a 50:*/

    SELECT * FROM Customers
    WHERE NOT CustomerID > 50;/*

    Nota: Hay un operador no mayor que: !> eso le daría el mismo resultado.

NOT menor que
    Ejemplo: Seleccione clientes con un CustomerID no sea menor a 50:*/

    SELECT * FROM Customers
    WHERE NOT CustomerId < 50;
    -- Nota: Hay un operador no menor que: !< eso le daría el mismo resultado.