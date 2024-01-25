/*
OR Statement:
    La cláusula WHERE puede contener uno o más operadores OR.
    El operador OR se utiliza para filtrar registros en función de más de una condición, como si desea devolver todos los clientes de Alemania pero también los de España:

    Ejemplo: Seleccione todos los clientes de Alemania o España:*/
    SELECT *
    FROM Customers
    WHERE Country = 'Germany' OR Country = 'Spain';/*

Sintaxis*/
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition1 OR condition2 OR condition3 ...;/*


OR VS AND
    El  operador OR muestra un registro si alguna de las condiciones es VERDADERA.
    El  operador AND muestra un registro si todas las condiciones son VERDADERAS.

Base de datos
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country
        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden


Al menos una condición debe ser cierta
    La siguiente instrucción SQL selecciona todos los campos de Clientes donde City sea "Berlín", CustomerName comience con la letra "G" o Country sea "Noruega":

    Ejemplo*/
    SELECT * FROM Customers
    WHERE City = 'Berlin' 
    OR CustomerName LIKE 'G%' OR Country = 'Norway';

/*
Combinando AND y OR
    Puede combinar los operadores AND y OR.
    La siguiente declaración SQL selecciona todos los clientes de España que comienzan con una "G" o una "R".
    Asegúrese de utilizar paréntesis para obtener el resultado correcto.

    Ejemplo: Seleccione todos los clientes españoles que comiencen con "G" o "R":*/

    SELECT * FROM Customers
    WHERE Country = 'Spain' 
    AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');/*

    Sin paréntesis, la declaración select devolverá todos los clientes de España que comiencen con una "G", más todos los clientes que comiencen con una "R", independientemente del 
    valor del país:
    
    Ejemplo: Seleccione todos los clientes que: sean de España y comiencen con "G" o comiencen con la letra "R":*/
    SELECT * FROM Customers
    WHERE Country = 'Spain' 
    AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';