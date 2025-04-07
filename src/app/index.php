<?php
// TODO: Gestionar sesiones y usuarios
/*if (empty($_POST['usuario']) || empty($_POST['password'])) {
  header('Location: ../');
}

include 'control-ventas.inc';

$sentencia = "SELECT * FROM usuarios WHERE email = ? AND password = SHA1(?)";
$result = $conn->execute_query($sentencia, array($_POST['usuario'], $_POST['password']));

if ($result->num_rows != 1) {
  header('Location: ../');
}

$userdata = $result->fetch_assoc();*/

?>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Control de Ventas</title>
    <link rel="stylesheet" href="../css/estilos.css">
    <script src="../js/code.js" defer></script>
</head>
<body>

<?php include 'includes/menu.inc'; ?>

<div class="contenedor">
    <?php

    include 'includes/' . ($userdata['rol'] == "gestor" ? 'inicio-gestor.inc' : 'inicio-vendedor.inc');

    ?>
</div>

</body>
</html>