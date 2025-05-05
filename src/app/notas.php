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

<div class="dos-columnas">
    <div class="filtros">

        <form id="crear-nota">
            <input type="hidden" name="autor" value="1">

            <label for="titulo">
                Titulo:
            </label>
            <input type="text" name="titulo" id="titulo" required>

            <label for="contenido">
                Contenido:
            </label>
            <textarea name="contenido" id="contenido"></textarea>

            <label for="fecha">
                Fecha:
            </label>
            <input type="date" name="fecha" id="fecha" value="<?php echo date('Y-m-d'); ?>" required>

            <label for="vendedor">
                Vendedor:
            </label>
            <select name="vendedor" id="vendedor">
                <option></option>
                <option value="1">Juan</option>
                <option value="2">Pep</option>
            </select>

            <label for="cliente">
                Cliente:
            </label>
            <select name="cliente" id="cliente">
                <option></option>
                <option value="Coca-cola">Coca-cola</option>
                <option value="Sony">Sony</option>
            </select>

            <label for="venta">
                Venta:
            </label>
            <!--<input type="search" id="venta">
            <input type="hidden" name="venta" value="1">-->
            <select name="venta" id="venta">
                <option></option>
                <option value="1">1</option>
                <option value="2">2</option>
            </select>

            <input type="submit" value="Guardar">
        </form>

    </div>
    <div class="contenido">

    </div>
</div>

<script type="module">
    import {crearNota} from '../js/notas.js';

    document.getElementById('crear-nota').addEventListener('submit', (event) => {
        event.preventDefault();
        crearNota(event.target);
    } );
</script>

</body>
</html>