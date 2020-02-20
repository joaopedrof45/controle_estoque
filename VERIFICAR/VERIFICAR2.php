<?php



  if(isset($_POST['NOMEITEM'])){
    $nomeitem=$_POST['NOMEITEM'];
  }else
  {

    $nomeitem=0;
  }


  if(isset($_POST['Patrimonio']))
{
  $pat=$_POST['Patrimonio'];
}else
  {
    $pat=0;
  }




  if(isset($_POST['LOCALIZACAO']))
  {
   $loc=$_POST['LOCALIZACAO'];
  }else
  {
    $loc=0;
  }
   

if(isset($_POST['TIPO'])){

  $TIPO=$_POST['TIPO'];
}else
  {
    $TIPO=0;
  }




  if($TIPO=="Almoxarifado"){
header("Location: ../VERIFICAR/VERIFICAALMOX/listar_produtos.php?pagina=1&nomeitem=$nomeitem&loc=$loc");
  }
  else
  {
header("Location: ../VERIFICAR/VERIFICAPATRI/listar_produtos.php?pagina=1&pat=$pat&loc=$loc");
  }



//validando  variaveis
?>