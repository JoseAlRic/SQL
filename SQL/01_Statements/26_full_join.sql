
/*
FULL JOIN Statement:
    La palabra clave FULL JOIN devuelve todos los registros cuando hay una coincidencia en los registros de la tabla izquierda (tabla1) o derecha (tabla2).

    Consejo: FULL OUTER JOIN y FULL JOIN son iguales.

Sintaxis*/ 
    SELECT column_name(s)
    FROM table1
    FULL OUTER JOIN table2
    ON table1.column_name = table2.column_name
    WHERE condition;/*

    Nota: ¡ FULL OUTER JOIN potencialmente puede devolver conjuntos de resultados muy grandes!

Base de datos 
    En este tutorial usaremos la conocida base de datos de muestra Northwind.

    A continuación se muestra una selección de la tabla "Clientes":

        CustomerID	            CustomerName	                ContactName	          Address	                      City	        PostalCode	Country

        1                   Alfreds Futterkiste             	Maria Anders	    Obere Str. 57	                Berlin	           12209	Germany
        2	            Ana Trujillo Emparedados y helados	    Ana Trujillo	    Avda. de la Constitución 2222	México D.F.	       05021	Mexico
        3	                  Antonio Moreno Taquería	        Antonio Moreno	    Mataderos 2312	                México D.F.	       05023	Mexico

    Y una selección de la tabla "Pedidos":

        OrderID	CustomerID	EmployeeID	OrderDate	ShipperID

        10308	    2	        7	    1996-09-18	    3
        10309	    37	        3	    1996-09-19	    1
        10310	    77	        8	    1996-09-20	    2

    Ejemplo: La siguiente declaración SQL selecciona todos los clientes y todos los pedidos:*/
    
        SELECT Customers.CustomerName, Orders.OrderID
        FROM Customers
        FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
        ORDER BY Customers.CustomerName;/*

        Una selección del conjunto de resultados puede verse así:

            CustomerName	                    OrderID
            
            Null	                            10309
            Null	                            10310
            Alfreds Futterkiste             	Null
            Ana Trujillo Emparedados y helados	10308
            Antonio Moreno Taquería	            Null

    Nota: La palabra clave devuelve FULL JOIN todos los registros coincidentes de ambas tablas, independientemente de que la otra tabla coincida o no. 
    Por lo tanto, si hay filas en "Clientes" que no tienen coincidencias en "Pedidos", o si hay filas en "Pedidos" que no tienen coincidencias en "Clientes", 
    esas filas también se enumerarán.