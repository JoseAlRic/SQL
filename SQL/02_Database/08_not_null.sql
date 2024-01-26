/*
NOT NULL
    De forma predeterminada, una columna puede contener valores NULL.

    La restricción NOT NULL obliga a una columna a NO aceptar valores NULL.

    Esto obliga a que un campo contenga siempre un valor, lo que significa que no puede insertar un nuevo registro ni 
    actualizar un registro sin agregar un valor a este campo.

NOT NULL en CREATE TABLE
    Ejemplo 1: El siguiente SQL garantiza que las columnas "ID", "LastName" y "FirstName" NO aceptarán valores NULL cuando se cree la 
    tabla "Persons":*/
        CREATE TABLE Persons (
            ID int NOT NULL,
            LastName varchar(255) NOT NULL,
            FirstName varchar(255) NOT NULL,
            Age int
        );/*

NOT NULL en ALTER TABLE
    Para crear una restricción NOT NULL en la columna "Age" cuando la tabla "Persons" ya está creada, use el siguiente SQL:

    Servidor SQL/Acceso MS:*/
        ALTER TABLE Persons
        ALTER COLUMN Age int NOT NULL;/*

    MySQL/Oracle (versión anterior 10G):*/
        ALTER TABLE Persons
        MODIFY COLUMN Age int NOT NULL;/*

    Oracle 10G y posteriores:*/
        ALTER TABLE Persons
        MODIFY Age int NOT NULL;
