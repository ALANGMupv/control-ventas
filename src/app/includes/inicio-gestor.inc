<?php
if (!isset($userdata) || !isset($conn)) die ();
?>
<h3>Notas: </h3>
    <?php
    $sql = "SELECT * FROM `notas` WHERE `autor` = " . $userdata['id'] . " ORDER BY `fecha` DESC";
    $result = $conn->query($sql);

    /**
     * @param $contenido
     * @return string
     */
    function resumirContenido($contenido)
    {
        if (strlen($contenido) <= 100) {
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

    // Aquí empieza el bucle
    while ($nota = $result->fetch_assoc()) {
        ?>
        <div class="nota">
            <h2> <?php echo ucfirst($nota['titulo']); ?></h2>
            <div class="fecha">
                <?php echo formatearFecha($nota['fecha']); ?>
            </div>
            <div>
                <?php echo resumirContenido($nota['contenido']); ?>
            </div>
        </div>
        <?php
    } // fin del while
    ?>
