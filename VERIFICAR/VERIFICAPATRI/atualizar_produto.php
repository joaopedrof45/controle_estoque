<?php
include_once("../../conexao.php");

$nome = $_POST['nome'];
$localpat = $_POST['localpat'];
$quantidadepat = $_POST['quantidadepat'];
$descpat= $_POST['descpat'];
$datapat = $_POST['datapat'];
$pat = $_POST['idpat'];
$gms = $_POST['gms'];
$prot=$_POST['prot'];
$locatual=$_POST['localizacao1'];
$patselect=$_POST['pat'];



echo"
aqui deveria aparecer a data --->$datapat  <br>
";

$sql = "UPDATE controle_prot SET NOMEITEM = '$nome', LOCALIZACAO = '$localpat', QUANTIDADE = '$quantidadepat', DATA = '$datapat',DESCRICAO = '$descpat',gms = '$gms',PROTOCOLO='$prot'" .
       " WHERE PATRIMONIO = $pat";
$update = mysqli_query($conn,$sql);

if($update){
    header("Location: ../VERIFICAPATRI/listar_produtos.php?atualizado=$pat&loc=$locatual&pagina=1&pat=$patselect"); 
}
