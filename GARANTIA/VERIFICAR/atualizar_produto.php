<?php
include_once("../../conexao.php");

$nome = $_POST['nome'];
$localmox = $_POST['localmox'];
$quantidadealmox = $_POST['quantidadealmox'];
$descalmox= $_POST['descalmox'];
$dataalmox = $_POST['dataalmox'];
$idalmox = $_POST['idalmox'];

$sql = "UPDATE controle SET NOMEITEM = '$nome', LOCALIZACAO = '$localmox', QUANTIDADE = $quantidadealmox, DATA = '$dataalmox',DESCRICAO = '$descalmox'" .
       " WHERE id = $idalmox";
$update = mysqli_query($conn,$sql);

if($update){
    header("Location: listar_produtos.php?atualizado=".$idalmox); 
}
