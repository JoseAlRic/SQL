/*
SQL

    SQL es un lenguaje estándar para almacenar, manipular y recuperar datos en bases de datos.

    ¿Qué es SQL?
        * SQL significa lenguaje de consulta estructurado
        * SQL le permite acceder y manipular bases de datos
        * SQL se convirtió en un estándar del Instituto Nacional Estadounidense de Estándares (ANSI) en 1986 y de la Organización Internacional de Normalización (ISO) en 1987.

    ¿Qué puede hacer SQL?
        * SQL puede ejecutar consultas en una base de datos
        * SQL puede recuperar datos de una base de datos
        * SQL puede insertar registros en una base de datos
        * SQL puede actualizar registros en una base de datos
        * SQL puede eliminar registros de una base de datos
        * SQL puede crear nuevas bases de datos
        * SQL puede crear nuevas tablas en una base de datos
        * SQL puede crear procedimientos almacenados en una base de datos.
        * SQL puede crear vistas en una base de datos
        * SQL puede establecer permisos sobre tablas, procedimientos y vistas

    RDBMS
        RDBMS significa Sistema de gestión de bases de datos relacionales.
        RDBMS es la base de SQL y de todos los sistemas de bases de datos modernos, como MS SQL Server, IBM DB2, Oracle, MySQL y Microsoft Access.
        Los datos en RDBMS se almacenan en objetos de base de datos llamados tablas. 

Declaraciones SQL

    La mayoría de las acciones que necesita realizar en una base de datos se realizan con declaraciones SQL.
    Las declaraciones SQL constan de palabras clave que son fáciles de entender.
    La siguiente declaración SQL devuelve todos los registros de una tabla denominada "Clientes":

        Ejemplo:
        Seleccione todos los registros de la tabla Clientes:*/

            SELECT * FROM Customers;/*

    Tablas de base de datos
        Una base de datos suele contener una o más tablas. Cada tabla se identifica con un nombre (por ejemplo, "Clientes" u "Pedidos") y contiene registros (filas) con datos.
        En este tutorial usaremos la conocida base de datos de muestra Northwind (incluida en MS Access y MS SQL Server).
        A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country
        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden

        La tabla anterior contiene cinco registros (uno para cada cliente) y siete columnas (CustomerID, CustomerName, ContactName, Address, City, PostalCode y Country).

    Manten eso en mente...
        Las palabras clave SQL NO distinguen entre mayúsculas y minúsculas: selecte lo mismo que SELECT
        En este tutorial escribiremos todas las palabras clave SQL en mayúsculas.

    ¿Punto y coma después de declaraciones SQL?
        Algunos sistemas de bases de datos requieren un punto y coma al final de cada declaración SQL.
        El punto y coma es la forma estándar de separar cada declaración SQL en sistemas de bases de datos que permiten ejecutar más de una declaración SQL en la misma llamada al servidor.
        En este tutorial, usaremos punto y coma al final de cada declaración SQL.

    Algunos de los comandos SQL más importantes*/
        SELECT-- extrae datos de una base de datos
        UPDATE-- actualiza datos en una base de datos
        DELETE-- elimina datos de una base de datos
        INSERT INTO-- inserta nuevos datos en una base de datos
        CREATE DATABASE-- crea una nueva base de datos
        ALTER DATABASE-- modifica una base de datos
        CREATE TABLE-- crea una nueva tabla
        ALTER TABLE-- modifica una tabla
        DROP TABLE-- elimina una tabla
        CREATE INDEX-- crea un índice (clave de búsqueda)
        DROP INDEX-- elimina un índice

/*
COMENTARIOS

        Los comentarios se utilizan para explicar secciones de sentencias SQL o para impedir la ejecución de sentencias SQL.
        Nota: ¡Los comentarios no son compatibles con las bases de datos de Microsoft Access!

    Comentarios de una sola línea
        Los comentarios de una sola línea comienzan con --.
        Cualquier texto entre -- y el final de la línea se ignorará (no se ejecutará).
        El siguiente ejemplo utiliza un comentario de una sola línea como explicación:

        Ejemplo 1:
            --Select all:*/

            SELECT * FROM Customers;/*

        Ejemplo 2:
            El siguiente ejemplo utiliza un comentario de una sola línea para ignorar el final de una línea:*/

            SELECT * FROM Customers -- WHERE City='Berlin';
        /*
        Ejemplo 3:
            El siguiente ejemplo utiliza un comentario de una sola línea para ignorar una declaración:*/

            --SELECT * FROM Customers;
            SELECT * FROM Products;/*

    Comentarios de varias líneas
        Los comentarios de varias líneas comienzan con /*y terminan con */.
        Cualquier texto entre /* y */ será ignorado.

        Ejemplo 4:
            El siguiente ejemplo utiliza un comentario de varias líneas como explicación:*/
            /*Select all the columns
            of all the records
            in the Customers table:*/
            SELECT * FROM Customers;/*

        Ejemplo 5:
            El siguiente ejemplo utiliza un comentario de varias líneas para ignorar muchas declaraciones:*/
            /*SELECT * FROM Customers;
            SELECT * FROM Products;
            SELECT * FROM Orders;
            SELECT * FROM Categories;*/
            SELECT * FROM Suppliers;/*
            Para ignorar sólo una parte de una declaración, utilice también el comentario /* */.

        Ejemplo 6:
            El siguiente ejemplo utiliza un comentario para ignorar parte de una línea:*/
            SELECT CustomerName, /*City,*/ Country FROM Customers;/*

        Ejemplo 7:
            El siguiente ejemplo utiliza un comentario para ignorar parte de una declaración:*/
            SELECT * FROM Customers WHERE (CustomerName LIKE 'L%'
            OR CustomerName LIKE 'R%' /*OR CustomerName LIKE 'S%'
            OR CustomerName LIKE 'T%'*/ OR CustomerName LIKE 'W%')
            AND Country='USA'
            ORDER BY CustomerName;
/*
OPERADORES

    Operador Descripción
        +       Suma	
        -       Restar	
        *       Multiplicar	
        /       Dividir	
        %       Modulo

    Operadores Bitwise
        &       AND
        |       OR
        ^       OR (exclusivo)

    Operadores de comparación
        =       Igual a	
        >       Mayor que	
        <       Menor que	
        >=      Mayor o igual que	
        <=      Menor o igual que	
        <>      No igual a

    Operador Descripción
        +=      Suma igual a
        -=      Restar igual
        *=      Multiplicar iguales
        /=      Divide igual
        %=      Módulo igual
        &=      Bitwise AND igual a
        ^-=     Bitwise exclusive igual a
        |*=     Bitwise OR igual a

    Operador Descripción	
    ALL         TRUE si todos los valores de la subconsulta cumplen la condición	
    AND         TRUE si todas las condiciones separadas por AND son TRUE	
    ANY         TRUE si cualquiera de los valores de la subconsulta cumple la condición	
    BETWEEN     TRUE si el operando está dentro del rango de comparaciones	
    EXISTS      TRUE si la subconsulta devuelve uno o más registros	
    IN          TRUE si el operando es igual a una de una lista de expresiones	
    LIKE        TRUE si el operando coincide con un patrón	
    NOT         Muestra un registro si la(s) condición(es) es(son) NO VERDADERA(S)	
    OR          TRUE si alguna de las condiciones separadas por OR es TRUE	
    SOME        TRUE si alguno de los valores de la subconsulta cumple la condición
*/
