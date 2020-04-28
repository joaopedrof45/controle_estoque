<?php
include_once("../../conexao.php");

$id = $_GET['id'];
$loc = $_GET['loc'];
$nomeitem = $_GET['nomeitem'];
$sql = "DELETE FROM controle WHERE id = $id";


	$newpesquisa = "Select * from controle where id='$id' ";
	$pesq1 = mysqli_query($conn, $newpesquisa);

	while ($registro = mysqli_fetch_array($pesq1)) {
		$nomeitemBANCO = $registro[0];
		$loc = $registro[1];
		$origem = $registro[2];
		$destino = $registro[3];
		$tipo = $registro[4];
		$qtd = $registro[5];
		$descricao = $registro[6];
		$data = $registro[7];
		$pat = $registro[8];
		$SERIE = $registro[9];
		$protocolo=$registro[11];
	}

$update = mysqli_query($conn,$sql);

if($update){

$ip=$_SERVER['REMOTE_ADDR'];
$acao="Exclusão";
$tipo="Almoxarifado";
$pat="0";
$DESTINO="NULL";
$MOTIVO="NULL";

$historico = "Insert into history(NOMEITEM,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,MOTIVO,PROTOCOLO,ip,acao)
values('$nomeitemBANCO','$origem','$DESTINO','$tipo','$qtd','$descricao',now(),'$pat','$SERIE','$MOTIVO','$protocolo','$ip','$acao')
";
			$pesq = mysqli_query($conn, $historico);

			 header("Location: listar_produtos.php?excluido=$id&nomeitem=$nomeitem&loc=$loc&pagina=1"); 

}
