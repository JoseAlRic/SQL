/*
IFNULL(), ISNULL(), COALESCE() y NVL() Statement:
    Mire la siguiente tabla de "Productos":

    P_Id	ProductName	    UnitPrice	UnitsInStock	UnitsOnOrder
    1	    Jarlsberg	    10.45	        16	             15
    2	    Mascarpone	    32.56	        23	 
    3	    Gorgonzola	    15.67	         9	             20

    Supongamos que la columna "UnitsOnOrder" es opcional y puede contener valores NULL.
    Mire la siguiente declaración SELECT:*/
    SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder)
    FROM Products;/*

    En el ejemplo anterior, si alguno de los valores de "UnitsOnOrder" es NULL, el resultado será NULL.

mysql
    La función MySQL IFNULL()te permite devolver un valor alternativo si una expresión es NULL:*/

    SELECT ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0))
    FROM Products;/*

    o podemos usar la función, así: COALESCE()*/

    SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
    FROM Products;/*

servidor SQL
    La ISNULL()función de SQL Server le permite devolver un valor alternativo cuando una expresión es NULL:*/

    SELECT ProductName, UnitPrice * (UnitsInStock + ISNULL(UnitsOnOrder, 0))
    FROM Products;/*

    o podemos usar la COALESCE() función, así:*/

    SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
    FROM Products;/*

Acceso MS
    La IsNull()función de MS Access devuelve VERDADERO (-1) si la expresión es un valor nulo; en caso contrario, FALSO (0):**/

    SELECT ProductName, UnitPrice * (UnitsInStock + IIF(IsNull(UnitsOnOrder), 0, UnitsOnOrder))
    FROM Products;/*

Oráculo
    La NVL()función de Oracle logra el mismo resultado:

    SELECT ProductName, UnitPrice * (UnitsInStock + NVL(UnitsOnOrder, 0))
    FROM Products;

    o podemos usar la COALESCE() función, así:*/

    SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
    FROM Products;