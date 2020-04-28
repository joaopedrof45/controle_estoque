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
$ip=$_SERVER['REMOTE_ADDR'];
$acao="Alteração";
$tipo="Almoxarifado";
$pat="0";
//aqui faz o historico de transferencia na tabela history
	$$historico = "Insert into history(NOMEITEM,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,MOTIVO,RESPONSAVEL,ip,acao)
values('$nomeitemBANCO','$ORIGEM','$DESTINO','$tipo','$QUANTIDADE','$descricao',now(),'$pat','$SERIE','$motivo','$protocolo','$ip','$acao')
";
	$pesq = mysqli_query($conn, $historico);
    header("Location: ../VERIFICAALMOX/listar_produtos.php?atualizado=$idalmox&nomeitem=$itematual&loc=$locatual&pagina=1"); 
		

}
