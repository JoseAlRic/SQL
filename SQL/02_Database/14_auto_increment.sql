/*
AUTO INCREMENT
    El AUTO INCREMENT permite generar automáticamente un número único cuando se inserta un nuevo registro en una tabla.
    A menudo, este es el campo de clave principal que nos gustaría que se creara automáticamente cada vez que se inserta un 
    nuevo registro.

Sintaxis para MySQL:
    La siguiente declaración SQL define la columna "Personid" como un campo de clave principal de incremento automático en 
    la tabla "Persons":*/

        CREATE TABLE Persons (
            Personid int NOT NULL AUTO_INCREMENT,
            LastName varchar(255) NOT NULL,
            FirstName varchar(255),
            Age int,
            PRIMARY KEY (Personid)
        );/*

    MySQL usa la  palabra clave AUTO_INCREMENT para realizar una función de incremento automático.
    De forma predeterminada, el valor inicial AUTO_INCREMENT es 1 y se incrementará en 1 para cada nuevo registro.

    Para permitir que la AUTO_INCREMENT secuencia comience con otro valor, utilice la siguiente declaración SQL:

    Para insertar un nuevo registro en la tabla "Persons", NO tendremos que especificar un valor para la columna "Personid" 
    (se agregará un valor único automáticamente):*/

        INSERT INTO Persons (FirstName,LastName)
        VALUES ('Lars','Monsen');/*

    La declaración SQL anterior insertaría un nuevo registro en la tabla "Persons". A la columna "Personid" se le asignaría 
    un valor único. La columna "FirstName" se establecería en "Lars" y la columna "LastName" se establecería en "Monsen".

Sintaxis para SQL Server:
    La siguiente declaración SQL define la columna "Personid" como un campo de clave principal de incremento automático en 
    la tabla "Persons":*/

    CREATE TABLE Persons (
        Personid int IDENTITY(1,1) PRIMARY KEY,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int
    );/*

    MS SQL Server utiliza la palabra clave IDENTITY para realizar una función de incremento automático.
    En el ejemplo anterior, el valor inicial IDENTITY es 1 y se incrementará en 1 para cada nuevo registro.

    Consejo: Para especificar que la columna "Personid" debe comenzar en el valor 10 e incrementarse en 5, cámbiela a 
    IDENTITY(10,5).

    Para insertar un nuevo registro en la tabla "Personas", NO tendremos que especificar un valor para la columna "Personid" 
    (se agregará un valor único automáticamente):*/

    INSERT INTO Persons (FirstName,LastName)
    VALUES ('Lars','Monsen');/*

    La declaración SQL anterior insertaría un nuevo registro en la tabla "Persons". A la columna "Personid" se le 
    asignaría un valor único. La columna "FirstName" se establecería en "Lars" y la columna "LastName" se establecería en 
    "Monsen".

Sintaxis de Access:
    La siguiente declaración SQL define la columna "Personid" como un campo de clave principal de incremento automático 
    en la tabla "Persons":*/

    CREATE TABLE Persons (
        Personid AUTOINCREMENT PRIMARY KEY,
        LastName varchar(255) NOT NULL,
        FirstName varchar(255),
        Age int
    );/*

    MS Access utiliza la AUTOINCREMENTpalabra clave para realizar una función de incremento automático.
    De forma predeterminada, el valor inicial AUTOINCREMENTes 1 y se incrementará en 1 para cada nuevo registro.

    Consejo: Para especificar que la columna "Personid" debe comenzar en el valor 10 e incrementarse en 5, cambie el 
    incremento automático a AUTOINCREMENT(10,5).

    Para insertar un nuevo registro en la tabla "Persons", NO tendremos que especificar un valor para la columna 
    "Personid" (se agregará un valor único automáticamente):*/

    INSERT INTO Persons (FirstName,LastName)
    VALUES ('Lars','Monsen');/*

    La declaración SQL anterior insertaría un nuevo registro en la tabla "Personas". A la columna "Personid" se le 
    asignaría un valor único. La columna "Nombre" se establecería en "Lars" y la columna "Apellido" se establecería en 
    "Monsen".

Sintaxis de Oracle:
    En Oracle el código es un poco más complicado.

    Tendrás que crear un campo de incremento automático con el objeto de secuencia (este objeto genera una secuencia numérica).

    Utilice la siguiente sintaxis CREATE SEQUENCE:*/

        CREATE SEQUENCE seq_person
        MINVALUE 1
        START WITH 1
        INCREMENT BY 1
        CACHE 10;/*

    El código anterior crea un objeto de secuencia llamado seq_person, que comienza con 1 y se incrementará en 1. 
    También almacenará en caché hasta 10 valores para mejorar el rendimiento. La opción de caché especifica cuántos 
    valores de secuencia se almacenarán en la memoria para un acceso más rápido.

    Para insertar un nuevo registro en la tabla "Persons", tendremos que usar la función nextval (esta función recupera 
    el siguiente valor de la secuencia seq_person):*/

        INSERT INTO Persons (Personid,FirstName,LastName)
        VALUES (seq_person.nextval,'Lars','Monsen');/*

    La declaración SQL anterior insertaría un nuevo registro en la tabla "Persons". A la columna "Personid" se le 
    asignaría el siguiente número de la secuencia seq_person. La columna "FirstName" se establecería en "Lars" y la 
    columna "LastName" se establecería en "Monsen".
