<?php
// TODO: Gestionar sesiones y usuarios

/* if ( empty ($_POST['usuario']) ||  empty ($_POST['password'])) {
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

$sql = "SELECT * FROM `usuarios` WHERE `email` = '" . $_POST['usuario'] . "' AND `password` = '" . $_POST['password'] . "'";
$result = $conn->query($sql); // almaceno el resultado de la consulta

if ($result->num_rows == 0) {
    header('Location: ../');
}

$userdata = $result -> fetch_assoc(); // Los datos que me devuelve en un array asociativo

?> */

?>

<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Control de Ventas</title>
    <link rel="stylesheet" href="../css/estilos.css">
    <script src = "../js/code.js" defer></script>
</head>
<body>

<?php include 'includes/menu.inc'; ?>

<div class="contenedor">
    <?php

    // include 'includes/' ($userdata['rol'] == "gestor" ? 'inicio-gestor.inc' : 'inicio-vendedor.inc');

    /*switch ($userdata['rol']) {
        case 'gestor':
            include 'includes/inicio-gestor.inc';
            break;
        case 'vendedor':
            include 'includes/inicio-gestor.inc';
            break;
    } */

    if($userdata['rol'] == "gestor") {
        include 'includes/inicio-gestor.inc';
    } else {
        include 'includes/inicio-vendedor.inc';
    }
    ?>
</div>

</body>
</html>