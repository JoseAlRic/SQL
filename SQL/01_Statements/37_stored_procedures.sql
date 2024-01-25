/*
¿Qué es un procedimiento almacenado?
    Un procedimiento almacenado es un código SQL preparado que puede guardar, de modo que el código pueda reutilizarse una y otra vez.
    Entonces, si tiene una consulta SQL que escribe una y otra vez, guárdela como un procedimiento almacenado y luego simplemente llámela para ejecutarla.
    También puede pasar parámetros a un procedimiento almacenado, de modo que el procedimiento almacenado pueda actuar en función de los valores de parámetro que se pasan.

Sintaxis*/
    CREATE PROCEDURE procedure_name
    AS
    sql_statement
    GO;/*

    Ejecutar un procedimiento almacenado*/

    EXEC procedure_name;/*

Base de datos de demostración
    A continuación se muestra una selección de la tabla "Clientes" en la base de datos de muestra de Northwind:

    CustomerID	        CustomerName        	            ContactName	                    Address	                     City       	PostalCode	        Country

    1               Alfreds Futterkiste	                    Maria Anders	            Obere Str. 57	                Berlin  	        12209	        Germany
    2	     Ana Trujillo Emparedados y helados	            Ana Trujillo	    Avda. de la Constitución 2222	        México D.F.	        05021	        Mexico
    3	        Antonio Moreno Taquería	                    Antonio Moreno	            Mataderos 2312	                México D.F.	        05023	        Mexico
    4                 Around the Horn	                    Thomas Hardy	            120 Hanover Sq.	                London	            WA1 1DP           UK
    5	            Berglunds snabbköp	                    Christina Berglund	         Berguvsvägen 8	                 Luleå	          S-958 22	        Sweden


    Ejemplo 1:
        La siguiente instrucción SQL crea un procedimiento almacenado llamado "SelectAllCustomers" que selecciona todos los registros de la tabla "Clientes":*/

        CREATE PROCEDURE SelectAllCustomers
        AS
        SELECT * FROM Customers
        GO;/*

    Ejemplo 2:
        Ejecute el procedimiento almacenado anterior de la siguiente manera:*/

        EXEC SelectAllCustomers;/*

Procedimiento almacenado con un parámetro

    Ejemplo 3: 
        La siguiente declaración SQL crea un procedimiento almacenado que selecciona Clientes de una ciudad particular de la tabla "Clientes":*/

        CREATE PROCEDURE SelectAllCustomers @City nvarchar(30)
        AS
        SELECT * FROM Customers WHERE City = @City
        GO;/*

    Ejemplo 4:
        Ejecute el procedimiento almacenado anterior de la siguiente manera:*/

        EXEC SelectAllCustomers @City = 'London';/*

Procedimiento almacenado con múltiples parámetros
    Configurar múltiples parámetros es muy fácil. Simplemente enumere cada parámetro y el tipo de datos separados por una coma como se muestra a continuación.

    Ejemplo 5: 
        La siguiente declaración SQL crea un procedimiento almacenado que selecciona Clientes de una Ciudad particular con un Código Postal particular de la tabla "Clientes":*/

        CREATE PROCEDURE SelectAllCustomers @City nvarchar(30), @PostalCode nvarchar(10)
        AS
        SELECT * FROM Customers WHERE City = @City AND PostalCode = @PostalCode
        GO;/*

    Ejemplo 6:
        Ejecute el procedimiento almacenado anterior de la siguiente manera:*/

        EXEC SelectAllCustomers @City = 'London', @PostalCode = 'WA1 1DP';