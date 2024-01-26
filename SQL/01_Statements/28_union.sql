/*
UNION Statement:
    El operador UNION se utiliza para combinar el conjunto de resultados de dos o más declaraciones SELECT.
    Cada declaración SELECT dentro UNION debe tener el mismo número de columnas.
    Las columnas también deben tener tipos de datos similares.
    Las columnas de cada declaración SELECT también deben estar en el mismo orden.

Sintaxis*/
    SELECT column_name(s) FROM table1
    UNION
    SELECT column_name(s) FROM table2;/*

UNIÓN ALL Sintaxis
    El operador UNION selecciona solo valores distintos de forma predeterminada. Para permitir valores duplicados, utilice UNION ALL:*/

    SELECT column_name(s) FROM table1
    UNION ALL
    SELECT column_name(s) FROM table2;/*

    Nota: Los nombres de las columnas en el conjunto de resultados suelen ser iguales a los nombres de las columnas en la primera 
    declaración SELECT.

Base de datos 
    En este tutorial usaremos la conocida base de datos de muestra Northwind.

    A continuación se muestra una selección de la tabla "Clientes":

        CustomerID	            CustomerName	                ContactName	          Address	                      City	        PostalCode	Country

        1                   Alfreds Futterkiste             	Maria Anders	    Obere Str. 57	                Berlin	           12209	Germany
        2	            Ana Trujillo Emparedados y helados	    Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	       05021	Mexico
        3	                  Antonio Moreno Taquería	        Antonio Moreno	    Mataderos 2312	                México D.F.	       05023	Mexico

    Y una selección de la tabla "Proveedores":

        SupplierID	    SupplierName	            ContactName	            Address	        City	        PostalCode	    Country

        1	            Exotic Liquid	            Charlotte Cooper	    49 Gilbert St.	London	         EC1 4SD	    UK
        2	        New Orleans Cajun Delights	    Shelley Burke	        P.O. Box 78934	New Orleans	     70117	        USA
        3	        Grandma Kelly's Homestead	    Regina Murphy	        707 Oxford Rd.	Ann Arbor	     48104	        USA


UNION
    Ejemplo: La siguiente declaración SQL devuelve las ciudades (solo valores distintos) de las tablas "Clientes" y "Proveedores":*/
        SELECT City FROM Customers
        UNION
        SELECT City FROM Suppliers
        ORDER BY City;/*

    Nota: Si algunos clientes o proveedores tienen la misma ciudad, cada ciudad solo aparecerá una vez, porque UNION solo 
    selecciona valores distintos. ¡ Úselo UNION ALL para seleccionar también valores duplicados!

UNION ALL
    Ejemplo: La siguiente declaración SQL devuelve las ciudades (también valores duplicados) de la tabla "Clientes" y "Proveedores":*/

        SELECT City FROM Customers
        UNION ALL
        SELECT City FROM Suppliers
        ORDER BY City;/*

UNION WHERE
    Ejemplo: La siguiente declaración SQL devuelve las ciudades alemanas (solo valores distintos) de las tablas "Clientes" y "Proveedores":*/

        SELECT City, Country FROM Customers
        WHERE Country='Germany'
        UNION
        SELECT City, Country FROM Suppliers
        WHERE Country='Germany'
        ORDER BY City;/*

UNION ALL WHERE
    Ejemplo: La siguiente declaración SQL devuelve las ciudades alemanas (también valores duplicados) de las tablas "Clientes" y "Proveedores":*/

        SELECT City, Country FROM Customers
        WHERE Country='Germany'
        UNION ALL
        SELECT City, Country FROM Suppliers
        WHERE Country='Germany'
        ORDER BY City;/*

Otro ejemplo de UNIÓN
    La siguiente declaración SQL enumera todos los clientes y proveedores:*/

        SELECT 'Customer' AS Type, ContactName, City, Country
        FROM Customers
        UNION
        SELECT 'Supplier', ContactName, City, Country
        FROM Suppliers;/*

Observe el "Tipo AS" arriba: es un alias. Los alias SQL se utilizan para dar un nombre temporal a una tabla o columna. 
Un alias solo existe mientras dure la consulta. Entonces, aquí hemos creado una columna temporal llamada "Tipo", que indica 
si la persona de contacto es un "Cliente" o un "Proveedor".