/*
Comodin
    Se utiliza un carácter comodín para sustituir uno o más caracteres en una cadena.
    Con el operador LIKE se utilizan caracteres comodín. El operador LIKE se utiliza en una cláusula WHERE para buscar un patrón específico en una columna.  

    Ejemplo:  Devolver todos los clientes que comiencen con la letra 'a':*/
        SELECT * FROM Customers
        WHERE CustomerName LIKE 'a%';/*

Caracteres comodín
    Simbolo 	Descripcion 
    %	        Representa cero o más caracteres
    _	        Representa un solo carácter
    []	        Representa cualquier carácter que no esté entre paréntesis *
    ^	        Representa cualquier carácter que no esté entre paréntesis
    -	        Representa cualquier carácter individual dentro del rango especificado *
    {}	        Representa cualquier carácter escapado **

    * No compatible con bases de datos PostgreSQL y MySQL.

    ** Compatible únicamente con bases de datos Oracle.

Base de datos:
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country
        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden

Usando el comodín %
    El comodín % representa cualquier número de caracteres, incluso cero caracteres.

    Ejemplo: Devuelve todos los clientes que terminan con el patrón 'es':*/
        SELECT * FROM Customers
        WHERE CustomerName LIKE '%es';/*

    Ejemplo: Devuelve todos los clientes que contienen el patrón 'mer':*/
        SELECT * FROM Customers
        WHERE CustomerName LIKE '%mer%';/*

Usando el comodín _
    El comodín _ representa un solo carácter.
    Puede ser cualquier carácter o número, pero cada uno _ representa un carácter, y sólo uno.

    Ejemplo: Devuelve todos los clientes que comienzan con cualquier carácter en City, seguido de "ondon":*/*
        SELECT * FROM Customers
        WHERE City LIKE '_ondon';/*

    Ejemplo: Devuelve todos los clientes que comienzan con "L" en City, seguidos de 3 caracteres cualesquiera y terminan con "on":*/
        SELECT * FROM Customers
        WHERE City LIKE 'L___on';/*

Usando el comodín []
    El comodín [] devuelve un resultado si alguno de los caracteres incluidos coincide.

    Ejemplo: Devuelve todos los clientes que comienzan con "b", "s" o "p":*/
        SELECT * FROM Customers
        WHERE CustomerName LIKE '[bsp]%';/*

Usando el comodín - 
    El comodín - le permite especificar una variedad de caracteres dentro del comodín [].

    Ejemplo: Devuelve todos los clientes que comienzan con "a", "b", "c", "d", "e" o "f":*/
        SELECT * FROM Customers
        WHERE CustomerName LIKE '[a-f]%';/*

Combinar comodines
    Cualquier comodín, como % y _ , se puede utilizar en combinación con otros comodines.

    Ejemplo: Devuelve todos los clientes que comienzan con "a" y tienen al menos 3 caracteres de longitud:*/
        SELECT * FROM Customers
        WHERE CustomerName LIKE 'a__%';/*

    Ejemplo: Devuelve todos los clientes que tienen "r" en la segunda posición:*/
        SELECT * FROM Customers
        WHERE CustomerName LIKE '_r%';/*

Sin comodín
    Si no se especifica ningún comodín, la frase debe tener una coincidencia exacta para devolver un resultado.

    Ejemplo: Devolver todos los clientes de España:*/
        SELECT * FROM Customers
        WHERE Country LIKE 'Spain';