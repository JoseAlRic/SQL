/*
COUNT() Statement:
    La función COUNT() devuelve el número de filas que coinciden con un criterio específico.

    Ejemplo
    Encuentre el número total de productos en la tabla Products :*/

    SELECT COUNT(*)
    FROM Products;/*

Sintaxis*/
    SELECT COUNT(column_name)
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

Agregar una cláusula WHERE
    Puede agregar una cláusula WHERE para especificar condiciones:

    Ejemplo
    Encuentre la cantidad de productos que Price son superiores a 20:*/

    SELECT COUNT(ProductID)
    FROM Products
    WHERE Price > 20;/*

Especificar columna
    Puede especificar un nombre de columna en lugar del símbolo de asterisco (*).

    Si especifica una columna en lugar de (*), los valores NULL no se contarán.

    Ejemplo
    Encuentre la cantidad de productos donde ProductName no es nulo:*/

    SELECT COUNT(ProductName)
    FROM Products;/*

Ignorar duplicados
    Puede ignorar los duplicados utilizando la palabra clave DISTINCT en la función COUNT.

    Si se especifica DISTINCT, las filas con el mismo valor para la columna especificada se contarán como una.

    Ejemplo
    ¿Cuántos precios diferentes hay en la tabla Products?*/

    SELECT COUNT(DISTINCT Price)
    FROM Products;/*

Utilice un alias
    Asigne un nombre a la columna contada utilizando la palabra clave AS.

    Ejemplo
    Nombra la columna "número de registros":*/

    SELECT COUNT(*) AS [number of records]
    FROM Products;

