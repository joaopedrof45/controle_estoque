<?php
include_once("../../conexao.php");

$nome = $_POST['nome'];
$localmox = $_POST['localmox'];
$quantidadealmox = $_POST['quantidadealmox'];
$descalmox= $_POST['descalmox'];
$dataalmox = $_POST['dataalmox'];
$idalmox = $_POST['idalmox'];
$gms = $_POST['gms'];
$prot=$_POST['prot'];
$locatual=$_POST['localizacao1'];
$itematual=$_POST['nomeitem'];

$sql = "UPDATE controle SET NOMEITEM = '$nome', LOCALIZACAO = '$localmox', QUANTIDADE = $quantidadealmox, DATA = '$dataalmox',DESCRICAO = '$descalmox',gms = '$gms',PROTOCOLO='$prot'" .
       " WHERE id = $idalmox";
$update = mysqli_query($conn,$sql);

if($update){
    header("Location: ../VERIFICAALMOX/listar_produtos.php?atualizado=$idalmox&nomeitem=$itematual&loc=$locatual&pagina=1"); 
}
