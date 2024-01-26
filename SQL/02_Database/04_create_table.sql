/*
CREATE TABLE
    La declaración CREATE TABLE se utiliza para crear una nueva tabla en una base de datos.

Sintaxis*/
    CREATE TABLE table_name (
        column1 datatype,
        column2 datatype,
        column3 datatype,
    ....
    );/*

    Los parámetros de columna especifican los nombres de las columnas de la tabla.

    El parámetro tipo de datos especifica el tipo de datos que puede contener la columna (por ejemplo, varchar, entero, 
    fecha, etc.).

    Consejo: Para obtener una descripción general de los tipos de datos disponibles, consulte la Referencia de tipos de 
    datos completa .

    Ejemplo 1: El siguiente ejemplo crea una tabla llamada "Persons" que contiene cinco columnas: PersonID, astName, FirstName, 
    Address y City:*/

        CREATE TABLE Persons (
            PersonID int,
            LastName varchar(255),
            FirstName varchar(255),
            Address varchar(255),
            City varchar(255)
        );/*

        La columna PersonID es de tipo int y contendrá un número entero.

        Las columnas LastName, FirstName, Address y City son de tipo varchar y contendrán caracteres, y la longitud máxima para 
        estos campos es 255 caracteres.

        La tabla "Persons" vacía ahora tendrá este aspecto:

            PersonID	LastName	FirstName	Address	    City
                    
        Consejo: La tabla "Persons" vacía ahora se puede llenar con datos con la instrucción SQL INSERT INTO .


Crear tabla usando otra tabla
    También se puede crear una copia de una tabla existente usando CREATE TABLE.

    La nueva tabla obtiene las mismas definiciones de columna. Se pueden seleccionar todas las columnas o columnas 
    específicas.

    Si crea una nueva tabla utilizando una tabla existente, la nueva tabla se completará con los valores existentes de la 
    tabla anterior.

    Sintaxis*/
    CREATE TABLE new_table_name AS
        SELECT column1, column2,...
        FROM existing_table_name
        WHERE ....;/*

    Ejemplo 2: El siguiente SQL crea una nueva tabla llamada "TestTables" (que es una copia de la tabla "customers"):*/

    CREATE TABLE TestTable AS
    SELECT customername, contactname
    FROM customers;
*/