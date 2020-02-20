<?php
include_once("../../conexao.php");

$id = $_GET['id'];
$sql = "DELETE FROM garantia WHERE pat= $id";
$update = mysqli_query($conn,$sql);

if($update){
    header("Location: listar_produtospat.php?excluido=".$id); 
}
