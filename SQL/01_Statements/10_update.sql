/*
UPDATE Statement:
    La declaración UPDATE se utiliza para modificar los registros existentes en una tabla.

Sintaxis*/
    UPDATE table_name
    SET column1 = value1, column2 = value2, ...
    WHERE condition;/*

    Nota: ¡ Tenga cuidado al actualizar registros en una tabla! Observe la cláusula WHERE de la declaración UPDATE. La cláusula WHERE especifica qué registros deben actualizarse. 
    Si omite la cláusula WHERE, ¡se actualizarán todos los registros de la tabla!

Base de datos
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country

        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden

UPDATE tabla
    Ejemplo: La siguiente declaración SQL actualiza el primer cliente (CustomerID = 1) con una nueva persona de contacto y una nueva ciudad.*/
    UPDATE Customers
    SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
    WHERE CustomerID = 1;/*

    Base de datos
    La selección de la tabla "Clientes" ahora se verá así

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country

        1                Alfreds Futterkiste	              Alfred Schmidt	       Obere Str. 57	         Frankfurt                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden

UPDATE varios registros
    Es la cláusula WHERE que determina cuántos registros se actualizarán.
    Ejemplo: La siguiente declaración SQL actualizará el nombre de contacto a "Juan" para todos los registros donde el país sea "México":*/
    UPDATE Customers
    SET ContactName='Juan'
    WHERE Country='Mexico';/*

     Base de datos
    La selección de la tabla "Clientes" ahora se verá así

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country

        1                Alfreds Futterkiste	              Alfred Schmidt	      Obere Str. 57	             Frankfurt	            12209	        Germany
        2	    Ana Trujillo Emparedados y helados	              Juan	    Avda. de la Constitución 2222	    México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	                  Juan               Mataderos 2312	            México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden

¡Advertencia de actualización!
    Ejemplo: Tenga cuidado al actualizar los registros. Si omite la cláusula WHERE, ¡TODOS los registros se actualizarán!*/
    UPDATE Customers
    SET ContactName='Juan';/*

     Base de datos
    La selección de la tabla "Clientes" ahora se verá así

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country

        1                Alfreds Futterkiste	                  Juan	              Obere Str. 57	             Frankfurt	            12209	        Germany
        2	    Ana Trujillo Emparedados y helados	              Juan	    Avda. de la Constitución 2222	    México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	                  Juan               Mataderos 2312	            México D.F.	            05023	        Mexico
        4                   Around the Horn	                      Juan	              120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	                  Juan                Berguvsvägen 8	          Luleå	               S-958 22	         Sweden