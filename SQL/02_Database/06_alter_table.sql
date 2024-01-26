/*
ALTER TABLE
    La declaración ALTER TABLE se utiliza para agregar, eliminar o modificar columnas en una tabla existente.

    La declaración ALTER TABLE también se utiliza para agregar y eliminar varias restricciones en una tabla existente.

ALTERAR TABLA - AÑADIR COLUMNA
    Para agregar una columna en una tabla, utilice la siguiente sintaxis:*/
    ALTER TABLE table_name
    ADD column_name datatype;/*

    Ejemplo 1:El siguiente SQL agrega una columna "Email" a la tabla "Customers":*/
    ALTER TABLE Customers
    ADD Email varchar(255);/*

ALTERAR TABLA - COLUMNA DE SOLTAR
    Para eliminar una columna en una tabla, utilice la siguiente sintaxis (tenga en cuenta que algunos sistemas de bases de 
    datos no permiten eliminar una columna):*/
    ALTER TABLE table_name
    DROP COLUMN column_name;/*

    Ejemplo 2: El siguiente SQL elimina la columna "Email" de la tabla "Customers":*/
    ALTER TABLE Customers
    DROP COLUMN Email;/*

ALTERAR TABLA - RENOMBRAR COLUMNA
    Para cambiar el nombre de una columna en una tabla, utilice la siguiente sintaxis:*/
    ALTER TABLE table_name
    RENAME COLUMN old_name to new_name;/*

ALTERAR TABLA - ALTERAR/MODIFICAR TIPO DE DATOS
    Para cambiar el tipo de datos de una columna en una tabla, utilice la siguiente sintaxis:

    Servidor SQL/Acceso MS:*/
        ALTER TABLE table_name
        ALTER COLUMN column_name datatype;/*

    MySQL/Oracle (versión anterior 10G):*/
        ALTER TABLE table_name
        MODIFY COLUMN column_name datatype;/*

    Oracle 10G y posteriores:*/
        ALTER TABLE table_name
        MODIFY column_name datatype;/*

    Ejemplo: Mira la tabla "Persons":

        ID	LastName	FirstName	Address	        City
        1	Hansen	       Ola	   Timoteivn 10	   Sandnes
        2	Svendson	   Tove	    Borgvn 23	   Sandnes
        3	Pettersen	   Kari	    Storgt 20	   Stavanger

    Ahora queremos agregar una columna llamada "DateOfBirth" en la tabla "Persons".

    Usamos la siguiente declaración SQL:*/
    ALTER TABLE Persons
    ADD DateOfBirth date;/*

    Observe que la nueva columna, "DateOfBirth", es del tipo fecha y contendrá una fecha. El tipo de datos especifica qué 
    tipo de datos puede contener la columna. Para obtener una referencia completa de todos los tipos de datos disponibles 
    en MS Access, MySQL y SQL Server, vaya a nuestra referencia completa de tipos de datos .

    La tabla "Persons" ahora tendrá este aspecto:

        ID	LastName	FirstName   	Address	     City	    DateOfBirth
        1	Hansen	      Ola	     Timoteivn 10	Sandnes	 
        2	Svendson	  Tove	      Borgvn 23	    Sandnes	 
        3	Pettersen	  Kari	      Storgt 20	    Stavanger	 

Ejemplo de cambio de tipo de datos
    Ahora queremos cambiar el tipo de datos de la columna denominada "DateOfBirth" en la tabla "Persons".

    Usamos la siguiente declaración SQL:*/
    ALTER TABLE Persons
    ALTER COLUMN DateOfBirth year;/*

    Observe que la columna "DateOfBirth" ahora es del tipo año y contendrá un año en formato de dos o cuatro dígitos.

Ejemplo de eliminar columna
    A continuación, queremos eliminar la columna denominada "DateOfBirth" en la tabla "Persons".

    Usamos la siguiente declaración SQL:*/
    ALTER TABLE Persons
    DROP COLUMN DateOfBirth;/*

    La tabla "Persons" ahora tendrá este aspecto:

        ID	LastName	FirstName	Address     	City
        1	Hansen	       Ola	 Timoteivn 10	  Sandnes
        2	Svendson	   Tove	  Borgvn 23	      Sandnes
        3	Pettersen	   Kari	  Storgt 20	      Stavanger
