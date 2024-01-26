/*
DROP TABLE
    La declaración DROP TABLE se utiliza para eliminar una tabla existente en una base de datos.

Sintaxis*/
    DROP TABLE table_name;/*

    Nota : Tenga cuidado antes de dejar caer una mesa. ¡Eliminar una tabla resultará en la pérdida de la información completa 
    almacenada en la tabla!

    Ejemplo: La siguiente declaración SQL elimina la tabla existente "Shippers":*/
        DROP TABLE Shippers;/*

TRUNCATE TABLE
    La declaración TRUNCATE TABLE se utiliza para eliminar los datos dentro de una tabla, pero no la tabla en sí.

    Sintaxis*/
        TRUNCATE TABLE table_name;