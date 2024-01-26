/*
SELECT INTO Statement:
    La declaración SELECT INTO copia datos de una tabla en una tabla nueva.

Sintaxis

    Copie todas las columnas en una nueva tabla:*/
    SELECT *
    INTO newtable [IN externaldb]
    FROM oldtable
    WHERE condition;/*

    Copie solo algunas columnas en una nueva tabla:*/
    SELECT column1, column2, column3, ...
    INTO newtable [IN externaldb]
    FROM oldtable
    WHERE condition;/*

    La nueva tabla se creará con los nombres y tipos de columnas tal como se definen en la tabla anterior. Puede crear nuevos nombres de columnas usando la AS cláusula.

Ejemplo 1:
    La siguiente declaración SQL crea una copia de seguridad de los Clientes:*/

    SELECT * INTO CustomersBackup2017
    FROM Customers;/*

Ejemplo 2:
    La siguiente declaración SQL utiliza la cláusula IN para copiar la tabla en una nueva tabla en otra base de datos:*/

    SELECT * INTO CustomersBackup2017 IN 'Backup.mdb'
    FROM Customers;/*

Ejemplo 3:
    La siguiente declaración SQL copia solo unas pocas columnas en una nueva tabla:*/

    SELECT CustomerName, ContactName INTO CustomersBackup2017
    FROM Customers;/*

Ejemplo 4:
    La siguiente declaración SQL copia sólo los clientes alemanes en una nueva tabla:*/

    SELECT * INTO CustomersGermany
    FROM Customers
    WHERE Country = 'Germany';/*

Ejemplo 5:
    La siguiente declaración SQL copia datos de más de una tabla en una tabla nueva:*/

    SELECT Customers.CustomerName, Orders.OrderID
    INTO CustomersOrderBackup2017
    FROM Customers
    LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;/*

Consejo: SELECT INTO también se puede utilizar para crear una tabla nueva y vacía utilizando el esquema de otra. Simplemente agregue una WHERE cláusula 
que haga que la consulta no devuelva datos:*/

SELECT * INTO newtable
FROM oldtable
WHERE 1 = 0;