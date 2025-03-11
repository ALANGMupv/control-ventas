<?php
if ( empty ($_POST['usuario']) ||  empty ($_POST['password'])) {
    header('Location: ../');
}

// region --- Conexión a la BBDD ---
$servername = "localhost"; // Para plesk también es localhost
$username = "root"; // El usuario que usamos por defecto en Xampp es root, en plesk lo crearemos nosotros
$password = "";
$dbname = "aguemar_control-ventas";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) { // Esto es un objeto, como en otra lenguaje sería conn(objeto).connect_error(propiedad)
    die("Connection failed: " . $conn->connect_error); // El punto en php, es concatenación de cadenas
}

// endregion

$sql = "SELECT * FROM `usuarios` WHERE `nombre_usuario` = '" . $_POST['usuario'] . "' AND `password` = '" . $_POST['password'] . "'";
$result = $conn->query($sql); // almaceno el resultado de la consulta

if ($result->num_rows == 0) {
    header('Location: ../');
}

?>

<h1>Bienvenido <?php echo $_POST['usuario']; ?></h1>


