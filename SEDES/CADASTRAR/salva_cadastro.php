
<?php
include_once("../../conexao.php");
$nomesede = $_POST['nomesede'];
$endsede = $_POST['endsede'];
$nr_sede = $_POST['nr_sede'];
$cep_sede = $_POST['cep_sede'];
$regiao = $_POST['regiao'];

             



if ($nomesede == "" || $endsede == "Escolha uma opção" ||  $nr_sede == "" || $cep_sede == "" || $regiao=="" ) {
  echo "<script> alert('Preencha todos os campos') ;</script>";

  echo "<script>history.go(-1)</script>";
} 

//$suaString = strtolower($NOMEITEM); talves precise




 $result_usuario = "INSERT INTO sedes(nomesede,endereco,nr,cep,local)

 VALUES('$nomesede','$endsede','$nr_sede','$cep_sede','$regiao')";

    $pesq = mysqli_query($conn, $result_usuario);
   echo "<script> alert('Cadastro feito com sucesso');</script>";
     
header('Location: INDEXCADASTRAR.php'.'?Cadastrado');

?>