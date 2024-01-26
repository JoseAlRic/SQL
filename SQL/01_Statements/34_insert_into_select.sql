/*
INSERT INTO SELECT Statement:
    La declaración INSERT INTO SELECT copia datos de una tabla y los inserta en otra tabla.
    La declaración INSERT INTO SELECT requiere que los tipos de datos en las tablas de origen y de destino coincidan.

    Nota: Los registros existentes en la tabla de destino no se ven afectados.

Sintaxis
    Copie todas las columnas de una tabla a otra tabla:*/
    INSERT INTO table2
    SELECT * FROM table1
    WHERE condition;/*

    Copie solo algunas columnas de una tabla a otra tabla:*/
    INSERT INTO table2 (column1, column2, column3, ...)
    SELECT column1, column2, column3, ...
    FROM table1
    WHERE condition;/*

Base de datos:
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country
        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico

    Y una selección de la tabla "Proveedores":

            SupplierID	        SupplierName	            ContactName         	Address         	City	        PostalCode	        Country

        1	                Exotic Liquid	           Charlotte Cooper	     49 Gilbert St.	        London	          EC1 4SD	            UK
        2	            New Orleans Cajun Delights	    Shelley Burke	     P.O. Box 78934      	New Orleans	       70117	            USA
        3	            Grandma Kelly's Homestead	    Regina Murphy	     707 Oxford Rd.	        Ann Arbor	       48104	            USA

    Ejemplo 1: Copie "Proveedores" en "Clientes" (las columnas que no están llenas de datos contendrán NULL):*/

        INSERT INTO Customers (CustomerName, City, Country)
        SELECT SupplierName, City, Country FROM Suppliers;/*

    Ejemplo 2: Copie "Proveedores" en "Clientes" (llene todas las columnas):*/

        INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
        SELECT SupplierName, ContactName, Address, City, PostalCode, Country FROM Suppliers;/*

    Ejemplo 3: Copie sólo los proveedores alemanes en "Clientes":*/

        INSERT INTO Customers (CustomerName, City, Country)
        SELECT SupplierName, City, Country FROM Suppliers
        WHERE Country='Germany';