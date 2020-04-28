<?php
include_once("../../conexao.php");

$nome = $_POST['nome'];
$localpat = $_POST['localpat'];
$quantidadepat = $_POST['quantidadepat'];
$descpat= $_POST['descpat'];
$datapat = $_POST['datapat'];
$gms = $_POST['gms'];
$prot=$_POST['prot'];
$pat = $_POST['idpat'];
$locatual=$_POST['localizacao1'];
$patselect=$_POST['pat'];





$sql = "UPDATE controle_prot SET NOMEITEM = '$nome', LOCALIZACAO = '$localpat', QUANTIDADE = '$quantidadepat', DATA = '$datapat',DESCRICAO = '$descpat',gms = '$gms',PROTOCOLO='$prot'" .
       " WHERE PATRIMONIO = $pat";
$update = mysqli_query($conn,$sql);

if($update){


$ip=$_SERVER['REMOTE_ADDR'];
$acao="Alteração";
$tipo="Patrimonio";
$pat="0";
//aqui faz o historico de transferencia na tabela history
	$historico = "Insert into history(NOMEITEM,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,MOTIVO,RESPONSAVEL,ip,acao)
values('$nomeitemBANCO','$ORIGEM','$DESTINO','$tipo','$QUANTIDADE','$descricao',now(),'$pat','$SERIE','$motivo','$protocolo','$ip','$acao')
";
$pesq = mysqli_query($conn, $historico);

    header("Location: ../VERIFICAPATRI/listar_produtos.php?atualizado=$pat&loc=$locatual&pagina=1&pat=$patselect"); 
}
