<?php

$tipo=$_POST['TIPO'];
$temp=$_FILES['import']['tmp_name']; //variavel temporaria para pegar arquivo em qualquer local
$nome=$_FILES['import']['name'];//nome original

// metodo de importação
include_once("importar_export.php");
$importar = new importar_export();

 $dados=file($temp);//transforma os dados em um array de dados para enviar para a classe
 //de importação

//verifica o tipo do arquivo 
   $ext=explode(".",$nome);
  $extensao=end($ext);
  if($extensao!="csv"){
    echo "<script>alert('Escolha um Aquivo CSV ');history.back()</script>";
      exit;
  }else{

//verifica tipo escolhido

if($tipo=="Almoxarifado"){

	$importar->importar($temp,$dados,"controle",$tipo);
}
elseif($tipo=="Patrimonio"){

	$importar->importar($temp,$dados,"controle_prot",$tipo);
}

elseif($tipo=="garantia"){

	$importar->importar($temp,$dados,"garantia",$tipo);
}

elseif($tipo=="sedes"){

	$importar->importar($temp,$dados,"sedes",$tipo);
}

  }




?>