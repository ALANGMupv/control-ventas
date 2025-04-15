<?php

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
    <link rel="stylesheet" href="../css/app.css">
    <script src="../js/code.js" defer></script>
</head>
<body>

<?php include 'includes/menu.inc'; ?>

<!-- ¡Vamosss! 🔥 Esa es la actitud, ¡por fin la tan esperada tabla de ventas de Danipa! 😎🎉 -->
<div class="dos-columnas">
<div class="filtros">
    <label>
        Vendedor:<br>
        <select>
            <?php
            $archivoVendedores = file_get_contents("../api/v0.0/data/vendedores.json");
            $vendedores = json_decode($archivoVendedores);
            forEach($vendedores as $vendedor){
                echo '<option value="' . $vendedor->id . '">' . $vendedor->apellidos . ", "
                    .$vendedor->nombre . '</option>';
            }
            ?>
        </select>
    </label>
    <label for="clienteInput">
        Clientes:<br>
        <input type="text" id="clienteInput" name="cliente" list="clientes">
        <datalist id="clientes">
            <?php
            $archivoClientes = file_get_contents("../api/v0.0/data/clientes.json");
            $clientes = json_decode($archivoClientes);

            if ($clientes && is_array($clientes)) {
                foreach ($clientes as $cliente) {
                    echo '<option value="' . htmlspecialchars($cliente->nombre) . '"></option>';
                }
            } else {
                echo '<option value="Error al cargar clientes"></option>';
            }
            ?>
        </datalist>
    </label>

</div>
    <div class="contenido">

    </div>
</div>

</body>
</html>

