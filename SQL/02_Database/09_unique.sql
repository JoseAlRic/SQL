/*
UNIQUE
    La restricción UNIQUE garantiza que todos los valores de una columna sean diferentes.
    Tanto las restricciones UNIQUE como PRIMARY KEY proporcionan una garantía de unicidad para una columna o un conjunto de 
    columnas.

    Una restricción PRIMARY KEY tiene automáticamente una restricción UNIQUE.

    Sin embargo, puede tener muchasrestricciones UNIQUE por tabla, pero sólo una restricción PRIMARY KEY por tabla.

UNIQUE Constraint en CREATE TABLE
    El siguiente SQL crea una UNIQUErestricción en la columna "ID" cuando se crea la tabla "Persons":

    Servidor SQL/Oracle/MS Access:*/
        CREATE TABLE Persons (
            ID int NOT NULL UNIQUE,
            LastName varchar(255) NOT NULL,
            FirstName varchar(255),
            Age int
        );/*

    MySQL:*/
        CREATE TABLE Persons (
            ID int NOT NULL,
            LastName varchar(255) NOT NULL,
            FirstName varchar(255),
            Age int,
            UNIQUE (ID)
        );/*

    Para nombrar una restricción UNIQUE y definir una restricción UNIQUE en varias columnas, utilice la siguiente sintaxis SQL:
        MySQL/SQL Server/Oracle/MS Access:*/
        CREATE TABLE Persons (
            ID int NOT NULL,
            LastName varchar(255) NOT NULL,
            FirstName varchar(255),
            Age int,
            CONSTRAINT UC_Person UNIQUE (ID,LastName)
        );/*

UNIQUE Constraint en ALTER TABLE
    Para crear una restricción UNIQUE en la columna "ID" cuando la tabla ya está creada, use el siguiente SQL:
    MySQL/SQL Server/Oracle/MS Access:*/
    ALTER TABLE Persons
    ADD UNIQUE (ID);/*

    Para nombrar una restricción UNIQUE y definir una restricción UNIQUE en varias columnas, utilice la siguiente sintaxis SQL:
    MySQL/SQL Server/Oracle/MS Access:*/
    ALTER TABLE Persons
    ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);/*

DROP un UNIQUE Constraint
    Para eliminar una restricción UNIQUE, utilice el siguiente SQL:

    MySQL:*/
    ALTER TABLE Persons
    DROP INDEX UC_Person;/*

    Servidor SQL/Oracle/MS Access:*/
    ALTER TABLE Persons
    DROP CONSTRAINT UC_Person;