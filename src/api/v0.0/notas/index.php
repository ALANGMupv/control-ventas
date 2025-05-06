<?php

// TODO: recoger datos, crear nota y devolver resultado

$titulo = $_POST['titulo'];

$error = "false";
if (strtolower($titulo) === "error") $error = '"Se ha producido un error. No se creó la nota"';

echo '{
  "error" : ' . $error . ',
  "data": {
    "id": 23,
    "autor": "' . $_POST['autor'] . '",
    "titulo": "' . $titulo . '",
    "contenido": "' . $_POST['contenido'] . '",
    "fecha": "' . $_POST['fecha'] . '",
    "vendedor": ' . (empty($_POST['vendedor']) ? 'null' : '"' . $_POST['vendedor'] . '"') . ',
    "cliente": "' . $_POST['cliente'] . '",
    "venta": "' . $_POST['venta'] . '"
  }
}';
