/*
CREATE INDEX
    La declaración CREATE INDEX se utiliza para crear índices en tablas.
    Los índices se utilizan para recuperar datos de la base de datos más rápidamente que de otra manera. Los usuarios no 
    pueden ver los índices, solo se utilizan para acelerar las búsquedas/consultas.

    Nota: Actualizar una tabla con índices lleva más tiempo que actualizar una tabla sin índices (porque los índices también 
    necesitan una actualización). Por lo tanto, cree índices únicamente en las columnas en las que se buscarán con frecuencia.

Sintaxis
    Crea un índice en una tabla. Se permiten valores duplicados:*/

        CREATE INDEX index_name
        ON table_name (column1, column2, ...);/*

CREATE INDEX
    Crea un índice único en una tabla. No se permiten valores duplicados:*/

        CREATE UNIQUE INDEX index_name
        ON table_name (column1, column2, ...);/*

    Nota: La sintaxis para crear índices varía entre las diferentes bases de datos. Por lo tanto: verifique la sintaxis para 
    crear índices en su base de datos.

    Ejemplo: La siguiente declaración SQL crea un índice llamado "idx_lastname" en la columna "LastName" en la tabla "Persons":*/

        CREATE INDEX idx_lastname
        ON Persons (LastName);/*

    Si desea crear un índice en una combinación de columnas, puede enumerar los nombres de las columnas entre paréntesis, 
    separados por comas:*/

        CREATE INDEX idx_pname
        ON Persons (LastName, FirstName);/*

DROP INDEX
    La declaración DROP INDEX se utiliza para eliminar un índice en una tabla.

    Acceso MS:*/
        DROP INDEX index_name ON table_name;/*

    Servidor SQL:*/
        DROP INDEX table_name.index_name;/*

    DB2/Oracle:*/
        DROP INDEX index_name;/*

    MySQL:*/
        ALTER TABLE table_name
        DROP INDEX index_name;
