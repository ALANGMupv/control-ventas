<?php

// FIXME: Usuario de pruebas hasta que se implemente el login

/*$userdata = [
  'rol' => 'vendedor',
  'nombre' => 'Vendedor',
  'apellidos' => 'De Pruebas',
  'id' => 3
];*/

$userdata = [
    'rol' => 'gestor',
    'nombre' => 'Gestor',
    'apellidos' => 'De Pruebas',
    'id' => 3
];

require_once __DIR__ . '/../../../env/control-ventas.inc';
;

?>


<header>
    <a href="./">
        <img src="https://placehold.co/100x70" alt="Logotipo">
    </a>

    <nav>
        <ul>
            <li><a href="./ventas.php">Ventas</a></li>
            <?php if($userdata['rol'] == 'gestor') { ?>
                <li><a href="./notas.php">Notas</a></li>
            <?php } ?>
        </ul>
    </nav>

    <button popovertarget="menu-usuario">Usuario</button>
    <div id="menu-usuario" popover>
        <div>Bienvenido<br><?php echo $userdata['nombre'] . " " . $userdata['apellidos']; ?></div>
        <div><a href="./mi-perfil.php">Mi perfil</a></div>
        <div><a href="./logout.php">Salir</a></div>
    </div>
</header>