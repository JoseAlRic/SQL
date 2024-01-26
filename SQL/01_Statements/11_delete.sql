/*
Statement DELETE 
    La declaración DELETE se utiliza para eliminar registros existentes en una tabla.

Sintaxis*/
    DELETE FROM table_name WHERE condition;/*
    Nota: ¡ Tenga cuidado al eliminar registros en una tabla! Observe la cláusula WHERE de la declaración DELETE. La cláusula WHERE especifica qué registros deben eliminarse. 
    Si omite la cláusula WHERE, se eliminarán todos los registros de la tabla.

    Base de datos
    A continuación se muestra una selección de la tabla Clientes utilizada en los ejemplos:

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country

        1                Alfreds Futterkiste	              Maria Anders	          Obere Str. 57	             Berlin	                12209	        Germany
        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden


Ejemplo: Eliminar un registro
    La siguiente instrucción SQL elimina el cliente "Alfreds Futterkiste" de la tabla "Clientes":*/

    DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';/*

    Base de datos
    La selección de la tabla "Clientes" ahora se verá así

        CustomerID           CustomerName	                  ContactName         	    Address	                  City	             PostalCode	        Country

        2	    Ana Trujillo Emparedados y helados	          Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	            05021	        Mexico
        3	          Antonio Moreno Taquería	             Antonio Moreno	          Mataderos 2312	        México D.F.	            05023	        Mexico
        4                   Around the Horn	                   Thomas Hardy	          120 Hanover Sq.	          London	           WA1 1DP	          UK
        5	              Berglunds snabbköp	            Christina Berglund	      Berguvsvägen 8	          Luleå	               S-958 22	         Sweden


Ejemplo: Eliminar todos los registros
    Es posible eliminar todas las filas de una tabla sin eliminar la tabla. Esto significa que la estructura de la tabla, los atributos y los índices estarán intactos:*/
    
    DELETE FROM table_name;/*

Ejemplo: Eliminar una tabla
    Para eliminar la tabla por completo, utilice la declaración DROP TABLE:*/

    DROP TABLE Customers;