/*
PRIMARY KEY
    La restricción PRIMARY KEY identifica de forma única cada registro de una tabla.
    Las claves primarias deben contener valores ÚNICOS y no pueden contener valores NULL.
    Una tabla sólo puede tener UNA clave principal; y en la tabla, esta clave principal puede constar de una o varias columnas 
    (campos).

PRIMARY KEY en CREATE TABLE
    El siguiente SQL crea un PRIMARY KEY en la columna "ID" cuando se crea la tabla "Persons":

    MySQL:*/
        CREATE TABLE Persons (
            ID int NOT NULL,
            LastName varchar(255) NOT NULL,
            FirstName varchar(255),
            Age int,
            PRIMARY KEY (ID)
        );/*

    Servidor SQL/Oracle/MS Access:*/
        CREATE TABLE Persons (
            ID int NOT NULL PRIMARY KEY,
            LastName varchar(255) NOT NULL,
            FirstName varchar(255),
            Age int
        );/*

Para permitir la denominación de una  restricción PRIMARY KEY y definir una restricción PRIMARY KEY en varias columnas, 
utilice la siguiente sintaxis SQL:

    MySQL/SQL Server/Oracle/MS Access:*/
        CREATE TABLE Persons (
            ID int NOT NULL,
            LastName varchar(255) NOT NULL,
            FirstName varchar(255),
            Age int,
            CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
        );/*

    Nota: En el ejemplo anterior solo hay UNA PRIMARY KEY(PK_Person). Sin embargo, el VALOR de la clave principal se compone 
    de DOS COLUMNAS (ID + LastName).


PRIMARY KEY en ALTER TABLE
    Para crear una restricción PRIMARY KEY en la columna "ID" cuando la tabla ya está creada, use el siguiente SQL:

    MySQL/SQL Server/Oracle/MS Access:*/
        ALTER TABLE Persons
        ADD PRIMARY KEY (ID);/*

Para permitir la denominación de una restricción PRIMARY KEY y definir una restricción PRIMARY KEY en varias columnas, 
utilice la siguiente sintaxis SQL:

    MySQL/SQL Server/Oracle/MS Access:*/
        ALTER TABLE Persons
        ADD CONSTRAINT PK_Person PRIMARY KEY (ID,LastName);/*

    Nota: Si utiliza ALTER TABLE para agregar una clave principal, las columnas de clave principal deben haber sido declaradas 
    para que no contengan valores NULL (cuando se creó la tabla por primera vez).

DROP un PRIMARY KEY Constrain
    Para eliminar una restricción PRIMARY KEY, utilice el siguiente SQL:

    MySQL:*/
    ALTER TABLE Persons
    DROP PRIMARY KEY;/*

    Servidor SQL/Oracle/MS Access:*/
    ALTER TABLE Persons
    DROP CONSTRAINT PK_Person;
