/*
LIKE Statement:
    El operador LIKE se utiliza en una cláusula WHERE para buscar un patrón específico en una columna.
    Hay dos comodines que se utilizan a menudo junto con el operador LIKE:

        El signo de porcentaje (%) representa cero, uno o varios caracteres.
        El signo de subrayado _ representa un solo carácter.

        Ejemplo: Seleccione todos los clientes que comiencen con la letra "a":*/
            SELECT * FROM Customers
            WHERE CustomerName 
            LIKE 'a%';/*

Sintaxis*/
    SELECT column1, column2, ...
    FROM table_name
    WHERE columnN 
    LIKE pattern;/*

Base de datos:
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country
        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden

El comodín _
    El comodín _ representa un solo carácter.
    Puede ser cualquier carácter o número, pero cada uno _ representa un carácter, y sólo uno.

    Ejemplo: Devuelve todos los clientes de una ciudad que comienza con 'L' seguida de un carácter comodín, luego 'nd' y luego dos caracteres comodín:*/
        SELECT * FROM Customers
        WHERE city 
        LIKE 'L_nd__';/*

El comodín %
    El comodín % representa cualquier número de caracteres, incluso cero caracteres.

    Ejemplo: Devuelve todos los clientes de una ciudad que contiene la letra 'L':*/
        SELECT * FROM Customers
        WHERE city 
        LIKE '%L%';/*

Comienza con 
    Para devolver registros que comiencen con una letra o frase específica, agregue % al final de la letra o frase.

    Ejemplo: Devolver todos los clientes que comiencen con 'La':*/
        SELECT * FROM Customers
        WHERE CustomerName 
        LIKE 'La%';/*

    Consejo: También puede combinar cualquier cantidad de condiciones utilizando los operadores AND u OR.

    Ejemplo: Devuelve todos los clientes que comienzan con 'a' o comienzan con 'b':*/
        SELECT * FROM Customers
        WHERE CustomerName 
        LIKE 'a%' OR CustomerName LIKE 'b%';/*

Termina con
    Para devolver registros que terminan con una letra o frase específica, agregue % al principio de la letra o frase.

    Ejemplo: Devuelve todos los clientes que terminan en 'a':*/
        SELECT * FROM Customers
        WHERE CustomerName 
        LIKE '%a';/*

    Consejo: También puedes combinar "empieza por" y "termina por":

    Ejemplo: Devuelve todos los clientes que comienzan con "b" y terminan con "s":*/
        SELECT * FROM Customers
        WHERE CustomerName 
        LIKE 'b%s';/*

Contiene
    Para devolver registros que contengan una letra o frase específica, agregue % tanto antes como después de la letra o frase.

    Ejemplo: Devolver todos los clientes que contengan la frase 'o' condicional*/
        SELECT * FROM Customers
        WHERE CustomerName 
        LIKE '%or%';/*

Combinar comodines
    Cualquier comodín, como % y _ , se puede utilizar en combinación con otros comodines.

    Ejemplo: Devuelve todos los clientes que comienzan con "a" y tienen al menos 3 caracteres de longitud:*/
        SELECT * FROM Customers
        WHERE CustomerName 
        LIKE 'a__%';/*

    Ejemplo: Devuelve todos los clientes que tienen "r" en la segunda posición:*/
    SELECT * FROM Customers
    WHERE CustomerName 
    LIKE '_r%';/*

Sin comodín
    Si no se especifica ningún comodín, la frase debe tener una coincidencia exacta para devolver un resultado.

    Ejemplo: Devolver todos los clientes de España:*/
        SELECT * FROM Customers
        WHERE Country 
        LIKE 'Spain';