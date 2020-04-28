<?php

// metodo de importação
include_once("importar_export.php");
$importar = new importar_export();
$importar->importar($_FILES['import']['name'],"controle");

?>