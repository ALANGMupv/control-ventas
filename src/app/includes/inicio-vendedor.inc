<?php
if(!isset($userdata) || !isset($conn)) die();
?>
<h3>Estadísticas de ventas:</h3>
<div>
    Ventas de la última semana: <br>
    <?php
    $sql = "SELECT CAST(AVG(total) AS DECIMAL(10,2)) AS media,
       SUM(total) AS suma,
       COUNT(*) AS cantidad
FROM ventas
WHERE vendedor = " . $userdata['id'] . "
  AND YEARWEEK(NOW()) = YEARWEEK(fecha)";
    $result = $conn->query($sql);
    $resumenSemana = $result->fetch_assoc();

    echo "Media: " . $resumenSemana["media"] . "<br />";
    echo "Suma: " . $resumenSemana["suma"] . "<br />";
    echo "Cantidad: " . $resumenSemana["cantidad"] . "<br />";

    ?>
</div>
<div>
    Ventas de la semana pasada: <br>
    <?php
    $sql = "SELECT CAST(AVG(total) AS DECIMAL(10,2)) AS media,
       SUM(total) AS suma,
       COUNT(*) AS cantidad
FROM ventas
WHERE vendedor = " . $userdata['id'] . "
  AND YEARWEEK(DATE_SUB(NOW(), INTERVAL 7 DAY)) = YEARWEEK(fecha)";
    $result = $conn->query($sql);
    $resumenSemana = $result->fetch_assoc();

    echo "Media: " . $resumenSemana["media"] . "<br />";
    echo "Suma: " . $resumenSemana["suma"] . "<br />";
    echo "Cantidad: " . $resumenSemana["cantidad"] . "<br />";

    ?>
</div>
<div>
    Ventas del último mes:
</div>
<div>
    Ventas del último año:
</div>