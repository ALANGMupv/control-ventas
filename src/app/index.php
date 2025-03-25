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

$sql = "SELECT * FROM `usuarios` WHERE `email` = '" . $_POST['usuario'] . "' AND `password` = '" . $_POST['password'] . "'";
$result = $conn->query($sql); // almaceno el resultado de la consulta

if ($result->num_rows == 0) {
    header('Location: ../');
}

$userdata = $result -> fetch_assoc(); // Los datos que me devuelve en un array asociativo

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

<header>
    <img src="https://placehold.co/100x70" alt="Logotipo">
    <div>Bienvenido <?php echo $userdata ['nombre'] . "" . $userdata['apellidos']; ?></div>
</header>

<div class="contenedor">
<h3>Notas: </h3>
<?php
$sql = "SELECT * FROM `notas` WHERE `autor` = ".$userdata['id'] . " ORDER BY `fecha` DESC";
$result = $conn->query($sql);

/**
 * @param $contenido
 * @return string
 */
function resumirContenido($contenido)
{
    if(strlen($contenido) <= 100) {
        return $contenido;
    }
        return substr($contenido, 0, 100) . " [...]";
}

/**
 * @param $fecha
 * @return mixed
 */
function formatearFecha($fecha)
{
    setlocale(LC_TIME, 'es_ES.UTF-8', 'es_ES', 'esp', 'es'); // Asegura que se use español
    $date = date_create($fecha);
    return strftime("%d de %b del %Y", strtotime($fecha));
}

while ($nota = $result->fetch_assoc()) {
    ?>


<div class="nota">
    <h2> <?php echo ucfirst($nota['titulo']); ?></h2>
    <div class="fecha">
        <?php echo formatearFecha($nota['fecha']); ?>
    </div>
    <div>
        <?php echo resumirContenido($nota['contenido']);?>
    </div>
</div>

<?php } ?>
</div>

</body>
</html>