/*
BACKUP DATABASE
    La declaración BACKUP DATABASE se utiliza en SQL Server para crear una copia de seguridad completa de 
    una base de datos SQL existente.

Sintaxis*/
    BACKUP DATABASE databasename
    TO DISK = 'filepath';/*

BACKUP CON DIFERENCIAL
    Una copia de seguridad diferencial solo respalda las partes de la base de datos que han cambiado 
    desde la última copia de seguridad completa de la base de datos.

    Sintaxis*/
    BACKUP DATABASE databasename
    TO DISK = 'filepath'
    WITH DIFFERENTIAL;/*
    
Ejemplo 1: La siguiente instrucción SQL crea una copia de seguridad completa de la base de datos 
    existente "testDB" en el disco D:*/

    BACKUP DATABASE testDB
    TO DISK = 'D:\backups\testDB.bak';/*

    Consejo: siempre haga una copia de seguridad de la base de datos en una unidad diferente a la de la 
    base de datos real. Luego, si sufre una falla en el disco, no perderá su archivo de respaldo junto 
    con la base de datos.

Ejemplo 2: La siguiente declaración SQL crea una copia de seguridad diferencial de la base de datos "testDB":*/

    BACKUP DATABASE testDB
    TO DISK = 'D:\backups\testDB.bak'
    WITH DIFFERENTIAL;/*

    Consejo: Una copia de seguridad diferencial reduce el tiempo de la copia de seguridad (ya que solo 
    se respaldan los cambios).
*/