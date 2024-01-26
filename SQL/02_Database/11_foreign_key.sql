/*
FOREIGN KEY
    La restricción FOREIGN KEY se utiliza para evitar acciones que destruirían vínculos entre tablas.
    La FOREIGN KEY es un campo (o colección de campos) en una tabla, que hace referencia a la PRIMARY KEY de otra tabla.
    La tabla con la FOREIGN KEY se denomina tabla secundaria y la tabla con la PRIMARY KEY se denomina tabla referenciada o 
    principal.

    Mire las siguientes dos tablas:

    Tabla de personas
        PersonID	LastName	FirstName	Age

        1	        Hansen	      Ola	    30
        2      	   Svendson	     Tove	    23
        3	       Pettersen	 Kari	    20

    Tabla de pedidos
        OrderID	OrderNumber	PersonID

        1	      77895	       3
        2	      44678	       3
        3	      22456	       2
        4	      24562	       1

    Observe que la columna "PersonID" de la tabla "Pedidos" apunta a la columna "PersonID" de la tabla "Personas".
    La columna "PersonID" de la tabla "Personas" es la PRIMARY KEY en la tabla "Personas".
    La columna "PersonID" en la tabla "Pedidos" es la FOREIGN KEY en la tabla "Pedidos".

    La restricción FOREIGN KEY evita que se inserten datos no válidos en la columna de clave externa, porque tiene que ser 
    uno de los valores contenidos en la tabla principal.

FOREIGN KEY en CREATE TABLE
    El siguiente SQL crea un FOREIGN KEY en la columna "PersonID" cuando se crea la tabla "Pedidos":

    MySQL:*/
        CREATE TABLE Orders (
            OrderID int NOT NULL,
            OrderNumber int NOT NULL,
            PersonID int,
            PRIMARY KEY (OrderID),
            FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
        );/*

    Servidor SQL/Oracle/MS Access:*/
        CREATE TABLE Orders (
            OrderID int NOT NULL PRIMARY KEY,
            OrderNumber int NOT NULL,
            PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
        );/*

       
 Para permitir la denominación de una restricción FOREIGN KEY y definir una restricción en varias FOREIGN KEY 
columnas, utilice la siguiente sintaxis SQL:
    
    MySQL/SQL Server/Oracle/MS Access:*/
        CREATE TABLE Orders (
            OrderID int NOT NULL,
            OrderNumber int NOT NULL,
            PersonID int,
            PRIMARY KEY (OrderID),
            CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
            REFERENCES Persons(PersonID)
        );/*

FOREIGN KEY en ALTER TABLE
    Para crear una restricción FOREIGN KEY en la columna "PersonID" cuando la tabla "Pedidos" ya está creada, utilice el 
    siguiente SQL:

    MySQL/SQL Server/Oracle/MS Access:*/
        ALTER TABLE Orders
        ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);/*

Para permitir la denominación de una restricción FOREIGN KEY y definir una restricción FOREIGN KEY en varias columnas, 
utilice la siguiente sintaxis SQL:

    MySQL/SQL Server/Oracle/MS Access:*/
        ALTER TABLE Orders
        ADD CONSTRAINT FK_PersonOrder
        FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);/*

DROP una FOREIGN KEY 
    Para eliminar una restricción FOREIGN KEY, utilice el siguiente SQL:

    MySQL:*/
        ALTER TABLE Orders
        DROP FOREIGN KEY FK_PersonOrder;/*

    Servidor SQL/Oracle/MS Access:*/
        ALTER TABLE Orders
        DROP CONSTRAINT FK_PersonOrder;