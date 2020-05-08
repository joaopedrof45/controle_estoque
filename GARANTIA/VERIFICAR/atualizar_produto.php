<?php
include_once("../../conexao.php");

@$idalmox = $_POST['idalmox'];
$descalmox= $_POST['descalmox'];
$dataini= $_POST['dataini'];
$dataex = $_POST['dataex'];
$idpat =$_POST['idpat'];

if($idalmox==0){

$sql = "UPDATE garantia SET  descricao = '$descalmox', data_ini = '$dataini', data_ex = '$dataex'" .
       " WHERE pat =$idpat ";
$update = mysqli_query($conn,$sql);
	
}else{
$sql = "UPDATE garantia SET  descricao = '$descalmox', data_ini = '$dataini', data_ex = '$dataex'" .
       " WHERE id = $idalmox";
$update = mysqli_query($conn,$sql);
}


if($update){
    header("Location: listar_produtos.php?atualizado=".$idalmox); 
}
