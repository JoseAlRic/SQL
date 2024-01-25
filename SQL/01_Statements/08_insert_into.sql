/*
INSERT INTO Statement:
    La declaración INSERT INTO se utiliza para insertar nuevos registros en una tabla.

Sintaxis
    Es posible escribir la INSERT INTO declaración de dos maneras:

    1. Especifique tanto los nombres de las columnas como los valores que se insertarán:*/
    INSERT INTO table_name (column1, column2, column3, ...)
    VALUES (value1, value2, value3, ...);/*

    2. Si está agregando valores para todas las columnas de la tabla, no necesita especificar los nombres de las columnas en la consulta SQL. Sin embargo, asegúrese de que el orden de 
    los valores sea el mismo que el de las columnas de la tabla. Aquí, la INSERT INTOsintaxis sería la siguiente:*/
    INSERT INTO table_name
    VALUES (value1, value2, value3, ...);/*

Base de datos
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

    CustomerID	      CustomerName	            ContactName	             Address	                 City	   PostalCode	 Country
        89	       White Clover Markets	        Karl Jablonski      305 - 14th Ave. S. Suite 3B     Seattle      98128	       USA
        90             Wilman Kala	            Matti Karttunen	       Keskuskatu 45	            Helsinki	 21240	     Finland
        91             Wolski                     Zbyszek	            ul. Filtrowa 68	              Walla	     01-012 	  Poland


INSERT IN 
    Ejemplo: La siguiente declaración SQL inserta un nuevo registro en la tabla "Clientes":*/

    INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
    VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');/*

    ¿Notaste que no insertamos ningún número en el campo CustomerID?
    La columna CustomerID es un campo de incremento automático y se generará automáticamente cuando se inserte un nuevo registro en la tabla.

    La selección de la tabla "Clientes" ahora se verá así:

        CustomerID	   CustomerName	        ContactName	             Address	               City	    PostalCode	 Country
        89	       White Clover Markets	  Karl Jablonski      305 - 14th Ave. S. Suite 3B     Seattle      98128	   USA
        90             Wilman Kala	     Matti Karttunen	       Keskuskatu 45	          Helsinki     21240	  Finland
        91             Wolski                 Zbyszek	            ul. Filtrowa 68	           Walla	   01-012 	  Poland
        92          	Cardinal	    Tom B. Erichsen	              Skagen 21	              Stavanger	    4006	  Norway

Insertar datos solo en columnas especificadas
    También es posible insertar datos únicamente en columnas específicas.
    La siguiente instrucción SQL insertará un nuevo registro, pero solo insertará datos en las columnas "Nombre del cliente", "Ciudad" y "País" (el ID del cliente se actualizará 
    automáticamente):

    Ejemplo*/
    INSERT INTO Customers (CustomerName, City, Country)
    VALUES ('Cardinal', 'Stavanger', 'Norway');/*

        La selección de la tabla "Clientes" ahora se verá así:

        CustomerID	   CustomerName	        ContactName	             Address	               City	    PostalCode	 Country
        89	       White Clover Markets	  Karl Jablonski      305 - 14th Ave. S. Suite 3B     Seattle      98128	   USA
        90             Wilman Kala	     Matti Karttunen	       Keskuskatu 45	          Helsinki     21240	  Finland
        91             Wolski                 Zbyszek	            ul. Filtrowa 68	           Walla	   01-012 	  Poland
        92          	Cardinal	            NULL	              NULL                   Stavanger	    NULL	  Norway

Insertar varias filas
    También es posible insertar varias filas en una declaración.
    Para insertar varias filas de datos, utilizamos la misma INSERT INTOdeclaración, pero con varios valores:

    Ejemplo*/
    INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
    VALUES
    ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
    ('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
    ('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');/*
    
    Asegúrese de separar cada conjunto de valores con una coma ,.
        La selección de la tabla "Clientes" ahora se verá así:

            CustomerID	   CustomerName	        ContactName	             Address	               City	    PostalCode	 Country
            89	       White Clover Markets	  Karl Jablonski      305 - 14th Ave. S. Suite 3B     Seattle      98128	   USA
            90             Wilman Kala	     Matti Karttunen	       Keskuskatu 45	          Helsinki     21240	  Finland
            91             Wolski                 Zbyszek	            ul. Filtrowa 68	           Walla	   01-012 	  Poland
            92          	Cardinal	    Tom B. Erichsen	              Skagen 21	              Stavanger	    4006	  Norway
            93	          Greasy Burger	        Per Olsen	            Gateveien 15	            Sandnes 	4306	  Norway
            94	            Tasty Tee	        Finn Egan	S           treetroad 19B	          Liverpool	    L1 0AA	    UK
