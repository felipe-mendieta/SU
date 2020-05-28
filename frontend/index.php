<?php

require_once "controladores/plantilla.controlador.php";
//https://www.w3resource.com/php/statement/require_once.php

$plantilla = new ControladorPlantilla(); #instanciar controlador
$plantilla -> plantilla();               #ejecutar metodo del controlador
