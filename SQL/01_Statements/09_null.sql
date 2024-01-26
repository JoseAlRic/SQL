/*
¿Qué es un valor NULO (NULL)?
    Un campo con un valor NULL es un campo sin valor.

    Si un campo en una tabla es opcional, es posible insertar un nuevo registro o actualizar un registro sin agregar un valor a este campo. Luego, el campo se guardará con un valor NULL.

    Nota: Un valor NULL es diferente de un valor cero o de un campo que contiene espacios. ¡Un campo con un valor NULL es aquel que se dejó en blanco durante la creación del registro!

¿Cómo probar valores NULL?
    No es posible probar valores NULL con operadores de comparación, como =, < o <>.

    Tendremos que utilizar los operadores IS NULL y IS NOT NULL en su lugar.

Sintaxis(IS NULL):*/
    SELECT column_names
    FROM table_name
    WHERE column_name IS NULL;/*

Sintaxis (IS NOT NULL):*/
    SELECT column_names
    FROM table_name
    WHERE column_name IS NOT NULL;/*

Base de datos
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country

        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden

El operador IS NULL
    El operador IS NULL se utiliza para probar valores vacíos (valores NULL).

    Ejemplo: El siguiente SQL enumera todos los clientes con un valor NULL en el campo "Dirección":*/
    SELECT CustomerName, ContactName, Address
    FROM Customers
    WHERE Address IS NULL;/*

    Consejo: utilice siempre IS NULL para buscar valores NULL.

El operador IN NOT NULL
    El operador IS NOT NULL se utiliza para probar valores que no estén vacíos (NO valores NULOS).

    Ejemplo: El siguiente SQL enumera todos los clientes con un valor en el campo "Dirección":*/

    SELECT CustomerName, ContactName, Address
    FROM Customers
    WHERE Address IS NOT NULL;