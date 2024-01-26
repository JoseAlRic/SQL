/*
WHERE Statement:
    La cláusula*/ WHERE /*se utiliza para filtrar registros. 

    Se utiliza para extraer sólo aquellos registros que cumplen una condición específica.

Ejemplo
    Seleccione todos los clientes de México:*/

    SELECT * FROM Customers
    WHERE Country='Mexico';

/*    
Sintaxis*/
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition;/*

    Nota: ¡ La cláusula */WHERE/* no solo se usa en declaraciones*/ SELECT /*, también se usa en*/ UPDATE, DELETE, /*etc.!


Base de datos 
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country
        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden


Campos de texto frente a campos numéricos
    SQL requiere comillas simples alrededor de valores de texto (la mayoría de los sistemas de bases de datos también permitirán dobles comillas).
    Sin embargo, los campos numéricos no deben estar entre comillas:*/

-- Ejemplo
    SELECT * FROM Customers
    WHERE CustomerID=1;

/*
Operadores en la cláusula WHERE
    Puede utilizar otros operadores además del operador = para filtrar la búsqueda.

Ejemplo
    Seleccione todos los clientes con un CustomerID superior a 80:*/
    SELECT * FROM Customers
    WHERE CustomerID > 80;
/*
Se pueden utilizar los siguientes operadores en la WHERE cláusula:
Operador	Descripcion
    =	    Igual	
    >	    Mayor que	
    <	    Menor que	
    >=	    Mayor e igual que	
    <=	    Menor e igual que
    <>	    No es igual. Nota: En algunas versiones de SQL este operador puede escribirse como !=.
    BETWEEN	Entre un determinado rango
    LIKE	Buscar un patrón	
    IN	    Para especificar varios valores posibles para una columna
*/


