<?php
include_once("../../conexao.php");

$id = $_GET['id'];
$loc = $_GET['loc'];
$nomeitem = $_GET['nomeitem'];
$sql = "DELETE FROM controle WHERE id = $id";
$update = mysqli_query($conn,$sql);

if($update){
    header("Location: listar_produtos.php?excluido=$id&nomeitem=$nomeitem&loc=$loc&pagina=1"); 
}
