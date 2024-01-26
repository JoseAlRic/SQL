/*
Statement MIN() y MAX():
    La función MIN() devuelve el valor más pequeño de la columna seleccionada.
    La función MAX() devuelve el valor más grande de la columna seleccionada.

    Ejemplo: MIN() - Encuentra el precio más bajo:*/
        SELECT MIN(Price)
        FROM Products;/*

    Ejemplo: MAX() - Encuentra el precio más alto:*/
        SELECT MAX(Price)
        FROM Products;/*

Sintaxis*/
    SELECT MIN(column_name)
    FROM table_name
    WHERE condition;

    SELECT MAX(column_name)
    FROM table_name
    WHERE condition;/*

Base de datos
    A continuación se muestra una selección de la tabla Productos utilizada en los ejemplos:

        ProductID	ProductName	            SupplierID	CategoryID	        Unit	           Price
        1	            Chais	                1	        1	       10 boxes x 20 bags	    18
        2	            Chang	                1	        1	       24 - 12 oz bottles	    19
        3	        Aniseed Syrup	            1	        2	       12 - 550 ml bottles  	10
        4	   Chef Anton's Cajun Seasoning	    2	        2	        48 - 6 oz jars	        22
        5	   Chef Anton's Gumbo Mix	        2	        2	            36 boxes	       21.35


Establecer nombre de columna (alias)
    
    Ejemplo: Cuando usas MIN()o MAX(), la columna devuelta se llamará or de forma predeterminada. Para darle un nuevo nombre a la columna, use la palabra clave: AS*/
        SELECT MIN(Price) AS SmallestPrice
        FROM Products;