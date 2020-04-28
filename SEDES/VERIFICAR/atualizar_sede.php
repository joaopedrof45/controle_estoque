<?php
include_once("../../conexao.php");
                $id = $_POST['id'];
                $nomesede = $_POST['nomesede'];
                $endereco = $_POST['endereco'];
                $nr = $_POST['nr'];
                $cep = $_POST['cep'];
                $local = $_POST['local'];

$sql = "UPDATE sedes SET nomesede = '$nomesede', endereco = '$endereco', nr = $nr, cep = '$cep',local = '$local'" .
       " WHERE id = $id";
$update = mysqli_query($conn,$sql);

if($update){
    header("Location: listar_sedes.php?atualizado=".$id); 
}
