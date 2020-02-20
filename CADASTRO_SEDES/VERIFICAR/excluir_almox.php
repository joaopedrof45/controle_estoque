<?php
include_once("../../conexao.php");

$id = $_GET['id'];
$sql = "DELETE FROM garantia WHERE id = $id";
$update = mysqli_query($conn,$sql);

if($update){
    header("Location: listar_produtos.php?excluido=".$id); 
}
