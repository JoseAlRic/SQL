/*
CONCAT Statement:
    La función CONCAT en SQL se utiliza para concatenar (unir) dos o más cadenas de texto en una sola cadena. 
    Esta función toma dos o más argumentos, que pueden ser columnas, constantes o expresiones, y devuelve una cadena 
    que es la concatenación de estos valores.

    Ejemplo simple de cómo usar la función CONCAT:*/

    SELECT CONCAT('Hola', ' ', 'Mundo') AS Saludo;/*

    En este caso, la función CONCAT toma tres argumentos: 'Hola', ' ', y 'Mundo'. La cadena resultante sería 'Hola Mundo'. 
    Puedes concatenar cualquier número de cadenas según tus necesidades.

    También puedes utilizar columnas de una tabla. Supongamos que tienes una tabla llamada Usuarios con columnas Nombre y Apellido:*/

    SELECT CONCAT(Nombre, ' ', Apellido) AS NombreCompleto
    FROM Usuarios;/*

    Este ejemplo concatenaría las columnas Nombre y Apellido de la tabla Usuarios y devolvería una nueva columna llamada NombreCompleto con el resultado.

    Es importante tener en cuenta que si alguno de los valores es nulo, el resultado de la concatenación será nulo. Para manejar esto, puedes utilizar la 
    función CONCAT_WS, que permite especificar un separador y maneja automáticamente los valores nulos.*/

    SELECT CONCAT_WS(' ', Nombre, Apellido) AS NombreCompleto
    FROM Usuarios;/*

    En este caso, si alguno de los valores de Nombre o Apellido es nulo, el resultado aún será la concatenación de los valores no nulos, separados por un espacio.
*/