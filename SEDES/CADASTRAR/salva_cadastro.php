
<?php
include_once("../../conexao.php");
$nomesede = $_POST['nomesede'];
$endsede = $_POST['endsede'];
$nr_sede = $_POST['nr_sede'];
$cep_sede = $_POST['cep_sede'];

if ($nomesede == "" || $endsede == "Escolha uma opção" ||  $nr_sede == "" || $cep_sede == "") {
  echo "<script> alert('Preencha todos os campos') ;</script>";

  echo "<script>history.go(-1)</script>";
} 

//$suaString = strtolower($NOMEITEM); talves precise




 $result_usuario = "INSERT INTO sedes(nomesede,endereco,nr,cep)

 VALUES('$nomesede','$endsede','$nr_sede','$cep_sede')";

    $pesq = mysqli_query($conn, $result_usuario);


?>