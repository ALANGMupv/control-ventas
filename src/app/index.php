<?php
if ( empty ($_POST['usuario'])) {
    header('Location: ../'); //Redirige al nivel superior, en este caso el index
    /* http_response_code(401); // En vez del código de respuesta 200, forzar a un 401, no autorizado */
}
?>

<h1>Bienvenido <?php echo $_POST['usuario']; ?></h1>


