/*
DATE
    La parte más difícil cuando se trabaja con fechas es asegurarse de que el formato de la fecha que está intentando 
    insertar coincida con el formato de la columna de fecha en la base de datos.

    Siempre que sus datos contengan solo la parte de la fecha, sus consultas funcionarán como se esperaba. Sin embargo, 
    si se trata de una parte del tiempo, la cosa se vuelve más complicada.

Tipos de datos de fecha SQL
    MySQL viene con los siguientes tipos de datos para almacenar una fecha o un valor de fecha/hora en la base de datos:*/

        DATE-- formato AAAA-MM-DD
        DATETIME-- formato: AAAA-MM-DD HH:MI:SS
        TIMESTAMP-- formato: AAAA-MM-DD HH:MI:SS
        YEAR-- formato AAAA o AA
    /*
    SQL Server viene con los siguientes tipos de datos para almacenar una fecha o un valor de fecha/hora en la base de datos:*/

        DATE-- formato AAAA-MM-DD
        DATETIME-- formato: AAAA-MM-DD HH:MI:SS
        SMALLDATETIME-- formato: AAAA-MM-DD HH:MI:SS
        TIMESTAMP-- formato: un número único
    /*
    Nota: ¡ Los tipos de fecha se eligen para una columna cuando crea una nueva tabla en su base de datos!

SQL trabajando con fechas
    Mira la siguiente tabla:

        Tabla de pedidos

        OrderId	ProductName	        OrderDate

        1	    Geitost	            2008-11-11
        2	Camembert Pierrot	    2008-11-09
        3	Mozzarella di Giovanni	2008-11-11
        4	Mascarpone Fabioli	    2008-10-29

    Ahora queremos seleccionar los registros con una Fecha de pedido de "2008-11-11" de la tabla anterior.

    Usamos la siguiente declaración SELECT:*/

        SELECT * FROM Orders WHERE OrderDate='2008-11-11'/*

    El conjunto de resultados se verá así:

        OrderId	ProductName	        OrderDate

        1	    Geitost             2008-11-11
        3	Mozzarella di Giovanni	2008-11-11

    Nota: ¡ Se pueden comparar dos fechas fácilmente si no hay ningún componente de tiempo involucrado!

    Ahora, supongamos que la tabla "Pedidos" se ve así (observe el componente de tiempo agregado en la 
    columna "OrderDate"):

        OrderId	    ProductName	                    OrderDate

        1	        Geitost	                2008-11-11 13:23:44
        2	    Camembert Pierrot       	2008-11-09 15:45:21
        3	    Mozzarella di Giovanni	    2008-11-11 11:12:01
        4	    Mascarpone Fabioli	        2008-10-29 14:56:59

    Si usamos la misma declaración SELECT que arriba:*/

        SELECT * FROM Orders WHERE OrderDate='2008-11-11'/*

    ¡No obtendremos ningún resultado! Esto se debe a que la consulta busca solo fechas sin porción de tiempo.

    Consejo: Para que sus consultas sean simples y fáciles de mantener, no utilice componentes de tiempo en sus fechas, 
    ¡a menos que sea necesario!

