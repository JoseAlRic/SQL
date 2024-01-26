/*
INJECTION

    La inyección SQL es una técnica de inyección de código que podría destruir su base de datos.
    La inyección SQL es una de las técnicas de piratería web más comunes.
    La inyección SQL es la colocación de código malicioso en sentencias SQL, a través de la entrada de una página web.

SQL en páginas web

    La inyección SQL generalmente ocurre cuando le solicita información a un usuario, como su nombre de usuario/id de 
    usuario, y en lugar de un nombre/id, el usuario le proporciona una declaración SQL que, sin saberlo, ejecutará en 
    su base de datos.

    Mire el siguiente ejemplo que crea una declaración SELECT agregando una variable (txtUserId) a una cadena de selección. 
    La variable se obtiene de la entrada del usuario (getRequestString):*/

        txtUserId = getRequestString("UserId");
        txtSQL = "SELECT * FROM Users WHERE UserId = " + txtUserId;/*

    El resto de este capítulo describe los peligros potenciales de utilizar la entrada del usuario en sentencias SQL.

La inyección SQL basada en 1=1 siempre es cierta

    Mire el ejemplo anterior nuevamente. El propósito original del código era crear una declaración SQL para seleccionar un 
    usuario, con una identificación de usuario determinada.

    Si no hay nada que impida que un usuario ingrese una entrada "incorrecta", el usuario puede ingresar alguna entrada 
    "inteligente" como esta:*/

        ID de usuario: 105 OR 1=1/*

    Entonces, la declaración SQL se verá así:*/

        SELECT * FROM Users WHERE UserId = 105 OR 1=1;/*

    El SQL anterior es válido y devolverá TODAS las filas de la tabla "Users", ya que OR 1=1 siempre es VERDADERO.

    ¿El ejemplo anterior parece peligroso? ¿Qué pasa si la tabla "Users" contiene nombres y contraseñas?

    La declaración SQL anterior es muy parecida a esta:*/

        SELECT UserId, Name, Password FROM Users WHERE UserId = 105 or 1=1;/*

    Un pirata informático podría obtener acceso a todos los nombres de usuario y contraseñas de una base de datos simplemente 
    insertando 105 O 1=1 en el campo de entrada.

La inyección SQL basada en ""="" siempre es cierta

    A continuación se muestra un ejemplo de inicio de sesión de un usuario en un sitio web:*/

        Nombre de usuario: John Doe

        Contraseña: myPass/*

    Ejemplo*/
        uName = getRequestString("username");
        uPass = getRequestString("userpassword");

        sql = 'SELECT * FROM Users WHERE Name ="' + uName + '" AND Pass ="' + uPass + '"'/*

    Resultado*/
        SELECT * FROM Users WHERE Name ="John Doe" AND Pass ="myPass"/*

    Un hacker podría obtener acceso a nombres de usuario y contraseñas en una base de datos simplemente insertando 
    " OR ""=" en el cuadro de texto del nombre de usuario o contraseña:*/

        Nombre de usuario: " or ""="

        Contraseña: " or ""="/*

    El código en el servidor creará una declaración SQL válida como esta:

    Resultado*/
        SELECT * FROM Users WHERE Name ="" or ""="" AND Pass ="" or ""=""/*
        
    El SQL anterior es válido y devolverá todas las filas de la tabla "Users", ya que OR ""="" siempre es VERDADERO.

Inyección SQL basada en sentencias SQL por lotes 

    La mayoría de las bases de datos admiten declaraciones SQL por lotes.
    Un lote de sentencias SQL es un grupo de dos o más sentencias SQL, separadas por punto y coma.

    Ejemplo: La siguiente declaración SQL devolverá todas las filas de la tabla "Users" y luego eliminará la tabla "Suppliers".*/
        
        SELECT * FROM Users; DROP TABLE Suppliers/*

    Mira el siguiente ejemplo:*/

        txtUserId = getRequestString("UserId");
        txtSQL = "SELECT * FROM Users WHERE UserId = " + txtUserId;/*

    Y la siguiente entrada:*/

        Identificación de usuario: 105; DROP TABLE Suppliers/*

    La declaración SQL válida se vería así:*/

        SELECT * FROM Users WHERE UserId = 105; DROP TABLE Suppliers;/*

Utilice parámetros SQL para protección

    Para proteger un sitio web de la inyección SQL, puede utilizar parámetros SQL.
    Los parámetros SQL son valores que se agregan a una consulta SQL en el momento de la ejecución, de forma controlada.

    Ejemplo de maquinilla de afeitar ASP.NET*/
        txtUserId = getRequestString("UserId");
        txtSQL = "SELECT * FROM Users WHERE UserId = @0";
        db.Execute(txtSQL,txtUserId);/*

    Tenga en cuenta que los parámetros están representados en la declaración SQL mediante un marcador @.

    El motor SQL comprueba cada parámetro para garantizar que sea correcto para su columna y que se trate literalmente, y no 
    como parte del SQL que se va a ejecutar.

    Otro ejemplo*/
        txtNam = getRequestString("CustomerName");
        txtAdd = getRequestString("Address");
        txtCit = getRequestString("City");
        txtSQL = "INSERT INTO Customers (CustomerName,Address,City) Values(@0,@1,@2)";
        db.Execute(txtSQL,txtNam,txtAdd,txtCit);/*

    Los siguientes ejemplos muestran cómo crear consultas parametrizadas en algunos lenguajes web comunes.

    SELECCIONE DECLARACIÓN EN ASP.NET:*/
        txtUserId = getRequestString("UserId");
        sql = "SELECT * FROM Customers WHERE CustomerId = @0";
        command = new SqlCommand(sql);
        command.Parameters.AddWithValue("@0",txtUserId);
        command.ExecuteReader();/*

    INSERTAR EN LA DECLARACIÓN EN ASP.NET:*/
        txtNam = getRequestString("CustomerName");
        txtAdd = getRequestString("Address");
        txtCit = getRequestString("City");
        txtSQL = "INSERT INTO Customers (CustomerName,Address,City) Values(@0,@1,@2)";
        command = new SqlCommand(txtSQL);
        command.Parameters.AddWithValue("@0",txtNam);
        command.Parameters.AddWithValue("@1",txtAdd);
        command.Parameters.AddWithValue("@2",txtCit);
        command.ExecuteNonQuery();/*

    INSERTAR EN DECLARACIÓN EN PHP:*/
        $stmt = $dbh->prepare("INSERT INTO Customers (CustomerName,Address,City)
        VALUES (:nam, :add, :cit)");
        $stmt->bindParam(':nam', $txtNam);
        $stmt->bindParam(':add', $txtAdd);
        $stmt->bindParam(':cit', $txtCit);
        $stmt->execute();
