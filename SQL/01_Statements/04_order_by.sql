/*
ORDER BY Statement:
La palabra clave ORDER BY se utiliza para ordenar el conjunto de resultados en orden ascendente o descendente.

Ejemplo
    Ordenar los productos por precio:*/
    SELECT * FROM Products
    ORDER BY Price;

--Sintaxis
    SELECT column1, column2, ...
    FROM table_name
    ORDER BY column1, column2, ... ASC|DESC;/*

Base de datos 
    A continuación se muestra una selección de la tabla Productos utilizada en los ejemplos:

        ProductID	ProductName     	            SupplierID	   CategoryID	    Unit	            Price
        1	        Chais	                             1	            1	    10 boxes x 20 bags	     18
        2	        Chang	                             1	            1	    24 - 12 oz bottles  	 19
        3	        Aniseed Syrup           	     1	            2	    12 - 550 ml bottles	     10
        4	        Chef Anton's Cajun Seasoning	     2	            2	     48 - 6 oz jars	         22
        5	        Chef Anton's Gumbo Mix	             2	            2	       36 boxes	            21.35


DESC
    La palabra clave ORDER BY ordena los registros en orden ascendente de forma predeterminada. Para ordenar los registros en orden descendente, utilice la palabra clave  DESC.
    
    Ejemplo:
    Ordena los productos de mayor a menor precio:*/
    SELECT * FROM Products
    ORDER BY Price DESC;/*

Ordenar alfabéticamente
    Para valores de cadena, la palabra clave ORDER BY se ordenará alfabéticamente:
    
    Ejemplo
    Ordene los productos alfabéticamente por ProductName:*/
    SELECT * FROM Products
    ORDER BY ProductName;
/*
Alfabéticamente DESC
    Para ordenar la tabla alfabéticamente al revés, utilice la palabra clave DESC:

    Ejemplo
    Ordene los productos por ProductName en orden inverso:*/
    SELECT * FROM Products
    ORDER BY ProductName DESC;

/*
ORDENAR POR Varias columnas
    La siguiente declaración SQL selecciona todos los clientes de la tabla "Customers", ordenados por la columna "Country" y "CustomerName". Esto significa que ordena por País, pero si 
    algunas filas tienen el mismo País, las ordena por Nombre de Cliente:

    Ejemplo*/
    SELECT * FROM Customers
    ORDER BY Country, CustomerName;

/*
Usando ASC y DESC
    La siguiente declaración SQL selecciona todos los clientes de la tabla "Customers", ordenados de forma ascendente por "Country" y descendente por la columna "CustomerName":

    Ejemplo*/
    SELECT * FROM Customers
    ORDER BY Country ASC, CustomerName DESC;


