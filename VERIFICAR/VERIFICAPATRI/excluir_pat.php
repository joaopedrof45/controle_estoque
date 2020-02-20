<?php
include_once("../../conexao.php");

$id = $_GET['id'];
$pat = $_GET['pat'];
$loc = $_GET['loc'];

$sql = "DELETE FROM controle_prot WHERE PATRIMONIO = $id";
$update = mysqli_query($conn,$sql);

if($update){
    header("Location: listar_produtos.php?excluido=$id&pat=$pat&loc=$loc&pagina=1"); 
}
