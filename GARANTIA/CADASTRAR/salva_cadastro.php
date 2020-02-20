
<?php
include_once("../../conexao.php");
$NOMEITEM = $_POST['NOMEITEM'];
$TIPO = $_POST['TIPO'];
$DESCRICAO = $_POST['DESCRICAO'];
$patrimonio = $_POST['Patrimonio'];
$datainicio = $_POST['data'];
$datafim = $_POST['datafim'];

if ($TIPO == "" || $TIPO == "Escolha uma opção" ||  $DESCRICAO == "" || $datainicio == "") {
  echo "<script> alert('Preencha todos os campos') ;</script>";

  echo "<script>history.go(-1)</script>";
} else {

  if ($patrimonio == "") {
    $patrimonio = 0;
  }


  $suaString = strtolower($NOMEITEM);


  if ($patrimonio == 0 && $TIPO == "Patrimonio") {
    echo "<script> alert('Patrimonio não pode ser zero') ;</script>";

    echo "<script>history.go(-1)</script>";
    exit;
  }



  //todos seleciona o id e pat para verificar se aj existe no banco 
  $result_select = "SELECT  pat ,id from garantia ";
  $pesq = mysqli_query($conn, $result_select);

  while ($registro = mysqli_fetch_array($pesq)) {

    $patbanco = $registro[0];
    $idbanco = $registro[1];
  }




  //seleciona o id do item de almoxarifado escolhido
  $result_select1 = "SELECT  id  from controle where NOMEITEM='$NOMEITEM' ";
  $pesq1 = mysqli_query($conn, $result_select1);
  while ($registro = mysqli_fetch_array($pesq1)) {

    $idbanco = $registro[0];
  }



  if ($TIPO == "Patrimonio") {

    $idbanco = 0;
  }

  if ($patbanco == $patrimonio && $patbanco != 0) {
    echo "o patrimonio ja existe no banco";
    exit;
  } else {



    $result_usuario = "INSERT INTO garantia(id,data_ex,descricao ,data_ini,pat)

 VALUES('$idbanco','$datafim','$DESCRICAO','$datainicio','$patrimonio')";

    $pesq = mysqli_query($conn, $result_usuario);




    echo "<script> alert('Cadastro feito com sucesso! $suaString') ;</script>";

    echo "<script>history.go(-1)</script>";
  }
}


?>